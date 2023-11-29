SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%'
AND tb.startYear = 2013
AND tb.primaryTitle != 'Frozen'
AND tb.primaryTitle NOT IN ('Black Hawk Down', 'Atonement', 'Dunkirk', 'Darkest Hour')
ORDER BY tr.averageRating DESC
LIMIT 5