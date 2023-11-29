SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Crime', tb.genres) > 0
AND startYear = 1995
AND averageRating > (SELECT averageRating FROM title_ratings WHERE tconst = (SELECT tconst FROM title_basics WHERE primaryTitle = 'Casino') LIMIT 1)
UNION
SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Crime', tb.genres) > 0
AND startYear = 1990
AND averageRating > (SELECT averageRating FROM title_ratings WHERE tconst = (SELECT tconst FROM title_basics WHERE primaryTitle = 'Goodfellas') LIMIT 1)
LIMIT 5