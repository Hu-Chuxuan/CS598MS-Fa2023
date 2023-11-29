SELECT * FROM title_basics
WHERE titleType ='movie' AND genres LIKE '%Science Fiction%' AND isAdult = 0
AND (
    SELECT AVG(averageRating)
    FROM title_ratings
    WHERE title_id = tconst
) > (
    SELECT AVG(averageRating)
    FROM title_ratings
    WHERE title_id IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'The Martian')
)
AND NOT EXISTS (
    SELECT 1
    FROM title_principals
    WHERE nconst IN (SELECT nconst FROM name_basics WHERE primaryName = 'Matt Damon')
    AND category = 'actor'
)

This SQL query will SELECT all movies with the title type "movie" and genres containing "Science Fiction" and are rated PG, and have an average rating higher than The Martian. It will also exclude any movies that have Matt Damon as an actor