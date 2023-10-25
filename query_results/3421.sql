SELECT * FROM (
    SELECT t.*
       , COUNT(DISTINCT u.rating) AS ratingCount
           , AVG(u.rating)/COUNT(DISTINCT u.rating)*100 as avgRating
       , SUM((CASE WHEN i.titleType = "M" THEN 1 ELSE -1 END))/SUM(i.numVotes) AS genreAvg
    FROM title_basics AS t
    JOIN ratings AS r ON r.primaryTitle=t.titleID AND r.userID IN ('5876c7d0-a7e7-4bda-bfae-0cefeaaebdf4','5876c7d0-a7e7-4bda-bfae-0cefeabcdcf8')
    LEFT OUTER JOIN titles_genre AS g ON t.titleID=g.titleID AND g.titleType='M'
    LEFT OUTER JOIN user_titles AS ut ON r.primaryTitle=ut.titleID AND ut.userID IN('5876c7d0-a7e7-4bda-bfae-0cefeaaebdf4','5876c7d0-a7e7-4bda-bfae-0cefeabcdcf8')
    WHERE t.isAdult IS NULL OR t.startYear <= 1990 AND t.endYear >= 1990
    GROUP BY t.titleID ORDER by avgRating DESC LIMIT 1