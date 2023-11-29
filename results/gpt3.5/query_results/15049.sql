SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres NOT LIKE '%Animation%'
AND tb.primaryTitle NOT IN ('Frozen', 'Finding Nemo', 'Minions')
ORDER BY tr.averageRating DESC
LIMIT 10