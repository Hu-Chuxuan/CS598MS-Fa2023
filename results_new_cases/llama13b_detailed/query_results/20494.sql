SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_ratings.nconst = name_basics.nconst
WHERE primaryTitle LIKE '%Comedy%'
AND genres LIKE '%Comedy%'
AND averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE primaryTitle LIKE '%Comedy%')
AND numVotes > (SELECT COUNT(numVotes) FROM title_ratings WHERE primaryTitle LIKE '%Comedy%')
ORDER BY averageRating DESC, numVotes DESC