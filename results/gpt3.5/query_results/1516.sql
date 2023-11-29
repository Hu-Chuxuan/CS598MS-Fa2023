SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Mystery%' OR genres LIKE '%Thriller%'
ORDER BY numVotes DESC
LIMIT 5