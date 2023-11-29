SELECT primaryTitle, startYear, genres
FROM title_basics
WHERE startYear >= 2010
AND genres LIKE '%Drama%'
AND tconst NOT IN ('tt0492931')  -- Excluding Never Let Me Go
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5