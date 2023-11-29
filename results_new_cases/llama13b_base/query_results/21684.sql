SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t2.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n ON t1.primaryName = n.nconst
WHERE t1.genres = 'Drama' AND t1.startYear = 2013 AND t1.endYear = 2013 AND t2.averageRating > 7 AND t2.numVotes > 10000
AND (
    SELECT COUNT(*)
    FROM title_principals
    WHERE category = 'Actor' AND job = 'Lead' AND characters = 'Jay Gatsby'
    LIMIT 1
) > 1
AND EXISTS (
    SELECT 1
    FROM title_crew
    WHERE directors = 'Baz Luhrmann'
)
AND NOT EXISTS (
    SELECT 1
    FROM title_principals
    WHERE category = 'Actor' AND job = 'Lead' AND characters = 'Nick Carraway'
)
LIMIT 5