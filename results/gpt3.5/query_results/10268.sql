SELECT title_basics.primaryTitle, title_basics.startYear, title_basics.runtimeMinutes, title_basics.genres, title_ratings.averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.startYear >= 1990
AND title_basics.genres LIKE '%Crime%'
AND title_ratings.numVotes > 1000
AND title_basics.primaryTitle NOT IN ('Taxi Driver (1976)', 'Goodfellas (1990)', 'A Bronx Tale (1993)')
ORDER BY title_ratings.averageRating DESC, title_ratings.numVotes DESC
LIMIT 5