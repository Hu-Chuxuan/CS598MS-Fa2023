SELECT * FROM title_basics
WHERE titleType ='movie' AND genres LIKE '%War%' AND genres LIKE '%Action%'

SELECT * FROM title_ratings
WHERE tconst IN (SELECT tconst FROM title_basics WHERE titleType ='movie' AND genres LIKE '%War%' AND genres LIKE '%Action%')

SELECT * FROM name_basics
WHERE primaryName LIKE '%Tom Cruise%' OR primaryName LIKE '%Dwayne Johnson%'

SELECT * FROM title_crew
WHERE tconst IN (SELECT tconst FROM title_basics WHERE titleType ='movie' AND genres LIKE '%War%' AND genres LIKE '%Action%')

SELECT * FROM title_principals
WHERE tconst IN (SELECT tconst FROM title_basics WHERE titleType ='movie' AND genres LIKE '%War%' AND genres LIKE '%Action%')

ORDER BY rating DESC