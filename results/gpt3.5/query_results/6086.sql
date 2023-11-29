SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.genres NOT LIKE '%Violent%'
AND tb.primaryTitle NOT IN ('Speed  (1994)', 'The Matrix (1999)', 'True Grit  (2010)')
AND (tb.startYear >= 1990 AND tb.startYear <= 2005)
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 5