SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Heroes%'
AND tb.startYear > 1991
AND tb.tconst NOT IN ('tt0209144', 'tt0074486', 'tt0090605', 'tt0102926')
ORDER BY tr.averageRating DESC
LIMIT 1