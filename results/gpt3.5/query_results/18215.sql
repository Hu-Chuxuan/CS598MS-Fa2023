SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Basketball%'
AND tb.genres LIKE '%Sport%'
AND tb.startYear >= 1990
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('Space Jam (1996)', 'Training Day (2001)')
ORDER BY tr.averageRating DESC
LIMIT 5