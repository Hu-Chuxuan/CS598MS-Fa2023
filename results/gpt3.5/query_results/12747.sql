SELECT primaryTitle, startYear, runtimeMinutes, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Animation%'
AND startYear >= 2000
AND (primaryTitle NOT IN ('Spirited Away', 'Ponyo'))
ORDER BY numVotes DESC
LIMIT 5