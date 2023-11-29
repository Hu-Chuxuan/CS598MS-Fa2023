SELECT title_basics.title, title_ratings.averageRating, name_basics.primaryName
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
WHERE title_basics.genres LIKE '%comedy%'
AND title_ratings.averageRating > (
    SELECT AVG(title_ratings.averageRating)
    FROM title_ratings
    WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE genres LIKE '%comedy%')
)
AND title_basics.startYear >= 1999
AND title_basics.endYear <= 2000
AND name_basics.primaryName NOT IN (SELECT primaryName FROM name_basics WHERE birthYear < 1970)
AND name_basics.primaryName NOT IN (SELECT primaryName FROM name_basics WHERE deathYear > 2000)
ORDER BY title_ratings.averageRating DESC