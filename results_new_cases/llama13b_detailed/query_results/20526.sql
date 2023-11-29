SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE genres LIKE '%Comedy%' AND genres LIKE '%Dark%'
AND (directors = 'nm0085156' OR directors = 'nm0374658')
AND averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE genres LIKE '%Comedy%' AND genres LIKE '%Dark%')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5