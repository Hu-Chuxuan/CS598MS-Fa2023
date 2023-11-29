SELECT primaryTitle
FROM title_basics
WHERE genres LIKE '%Comedy%'
AND tconst NOT IN ('tt0415306', 'tt1119646', 'tt2004420')  -- Excluding the movies in user's preference history
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5