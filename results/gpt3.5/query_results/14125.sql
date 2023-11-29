SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2000
AND genres LIKE '%Action%'
AND primaryTitle NOT IN ('The Spy Next Door (2010)', 'Mission: Impossible – Rogue Nation (2015)', 'Jason Bourne  (2016)', 'Casino Royale  (2006)', 'The Bourne Identity  (2002)')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5