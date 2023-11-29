SELECT DISTINCT
    t.primaryTitle AS Title,
    avgr.averageRating AS Rating,
    COUNT(*) AS NumOfUsers
FROM
    imdb.title_basic tb INNER JOIN
    imdb.title_ratings tr ON tb.tconst = tr.tconst AND tb.startyear <= tr.endyear GROUP BY tb.tconst ORDER BY AVG(tr.numvotes),NumOfUsers DESC LIMIT 2 OFFSET 0
UNION ALL SELECT * FROM imdb.title WHERE imdb.title.isadult=1 OR imdb.title.originaltitle LIKE '%adult%' UNION ALL SELECT * FROM imdb.title WHERE imdb.title.genre IN ('action','thriller')
ORDER BY AVG(imdb.title_ratings.avgrating),NumOfUsers DESC LIMIT 2 OFFSET 0