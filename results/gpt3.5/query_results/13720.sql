SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.startYear <= 2022
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt0062622', 'tt1731141')  -- excluding previous watched movies
ORDER BY tr.averageRating DESC
LIMIT 5