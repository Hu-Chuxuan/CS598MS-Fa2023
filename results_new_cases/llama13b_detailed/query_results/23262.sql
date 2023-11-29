SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE titleType ='movie' AND (
    genres LIKE '%Animation%' OR
    genres LIKE '%Comedy%' OR
    genres LIKE '%Adventure%'
) AND
averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE primaryTitle = 'Finding Dory (2016)') AND
averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE primaryTitle = 'Finding Nemo (2003)')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5