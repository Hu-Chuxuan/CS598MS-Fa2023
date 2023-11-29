SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE genres LIKE '%Comedy%' AND numVotes > 1000
ORDER BY averageRating DESC