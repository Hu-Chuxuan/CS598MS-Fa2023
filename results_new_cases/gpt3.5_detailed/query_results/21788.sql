SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Musical%'
AND startYear > 2010
AND startYear < 2023
AND primaryTitle != 'Les Misérables'
AND primaryTitle != 'The Notebook'
ORDER BY averageRating DESC
LIMIT 5