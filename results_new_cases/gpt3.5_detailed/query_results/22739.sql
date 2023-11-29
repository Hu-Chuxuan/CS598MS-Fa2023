SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.titleType = 'movie'
AND tb.startYear > 2010
AND tb.tconst NOT IN ('tt0099902', 'tt0871418', 'tt1478338', 'tt0083131', 'tt0080487')
ORDER BY tr.averageRating DESC
LIMIT 10