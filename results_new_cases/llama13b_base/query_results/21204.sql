SELECT * FROM (
SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
       AVG(rating) AS avg_rating, COUNT(rating) AS num_votes
FROM title_ratings
WHERE titleType IN ('movie') AND startYear >= 2012 AND endYear <= 2018
GROUP BY tconst
HAVING avg_rating > 7 AND num_votes > 10000
) AS popular_movies
JOIN (
SELECT nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles
FROM name_basics
WHERE primaryProfession IN ('actor', 'actress')
AND birthYear >= 1980 AND deathYear <= 2018
GROUP BY nconst
HAVING COUNT(knownForTitles) > 5
) AS popular_actors
ON popular_movies.tconst = popular_actors.nconst
WHERE popular_movies.genres LIKE '%Action' AND popular_movies.runtimeMinutes > 120
ORDER BY popular_movies.avg_rating DESC, popular_actors.primaryName ASC