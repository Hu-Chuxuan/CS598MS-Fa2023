SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres LIKE '%Drama%'
AND title_basics.startYear < 2003
AND title_basics.titleType = 'movie'
AND title_ratings.numVotes > 1000
AND title_basics.primaryTitle NOT IN ('The NeverEnding Story  (1984)', 'Born Free (1966)', 'Where the Red Fern Grows  (2003)', 'Old Yeller  (1957)')
ORDER BY averageRating DESC
LIMIT 5