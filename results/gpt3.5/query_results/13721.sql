SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.genres LIKE '%Romance%'
AND tb.startYear >= 1990
AND tb.startYear <= 2000
AND tb.tconst != 'tt0114388'  -- Exclude 'Sense and Sensibility (1995)'
ORDER BY tr.averageRating DESC
LIMIT 10