SELECT * FROM 
( SELECT tb.*, 
    RANK() OVER (PARTITION BY tb.titleType ORDER BY SUM((tb.rating - tc.averageRating)/((tb.numvotes + tc.numvotes))*10 ) DESC, SUM((tb.runtimeMinutes/tc.runtimeMinutes)*10), tb.startyear ASC) AS rk, 
    CASE WHEN rk = 1 THEN 'Most Recommended' ELSE '' END AS mostRecommened
FROM   `imdb`.`title_basic` as tb LEFT JOIN imdb.`title_rating` as tc ON tb.primaryTitle= tc.primaryTitle WHERE tb.isadult='Y' AND (tb.originalTitle LIKE '%Comedy%') GROUP BY tb.titleType HAVING COUNT(*) >= 3