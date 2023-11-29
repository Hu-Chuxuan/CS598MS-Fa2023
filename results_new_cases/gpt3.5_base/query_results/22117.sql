SELECT tb.primaryTitle, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.isAdult = 0
AND tb.genres LIKE '%Family%'
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Allied (2016)', 'Forever My Girl  (2018)', 'Titanic  (1997)', 'Titanic (2012)', 'Romancing the Stone (1984)')
ORDER BY tr.averageRating DESC
LIMIT 5