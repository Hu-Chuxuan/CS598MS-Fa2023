SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle LIKE '%The Last Boy Scout%'
AND titleType = 'movie'
ORDER BY startYear DESC