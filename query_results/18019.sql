SELECT * FROM
(SELECT DISTINCT t.titleId AS id, t.titleType, mr.averageRating as rating
FROM title_basics t INNER JOIN
    (SELECT tb.*, COUNT(*) AS numVoters
        from title_ratings tr LEFT OUTER JOIN
            (SELECT distinct titleId FROM title_basics WHERE titleType = "movie") tb ON tr.titleId=tb.titleID AND tr.titleType="rating" GROUP BY tr.titleId HAVING count(*) > 1
     ) mr ON tb.titleid = mr.titleId
WHERE t.isAdult IS NULL OR t.startyear < 1976 OR t.endyear>1975
AND t.primaryTitle!= '' AND t.originalTitle <> ''
AND NOT EXISTS ( SELECT * FROM genre g where g.genreId IN ('Horror') AND g.genreId in (SELECT genreId from title_ratings))
AND mr.numvoters >= 100) AS ratedmovies
INNER JOIN (select distinct nc.nameId, nc.primaryName, yy.year as yearfrom name_basics nc inner join YEARSYY yy on nc.birthYear <= yy.year && nc.deathYear>=yy.year group by nc.nameId having count(*)=1 order by max(yy.year)