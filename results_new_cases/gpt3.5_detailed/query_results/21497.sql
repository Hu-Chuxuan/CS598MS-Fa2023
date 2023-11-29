SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.tconst != 'tt0375679' -- exclude the movie 'Crash (2004)'
AND tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Crash' AND startYear = 2004)
ORDER BY ABS(tb.startYear - 2004) ASC, tr.averageRating DESC
LIMIT 5