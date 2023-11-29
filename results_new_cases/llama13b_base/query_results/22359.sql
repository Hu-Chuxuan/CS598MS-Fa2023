SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.genres, name_basics.primaryName, title_ratings.averageRating
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.title LIKE '%Romance%' AND title_basics.endYear > 1997 AND title_ratings.averageRating > 7
AND NOT EXISTS (SELECT 1 FROM title_basics AS t2 WHERE t2.tconst = title_basics.tconst AND t2.genres LIKE '%Drama%')
AND NOT EXISTS (SELECT 1 FROM title_basics AS t3 WHERE t3.tconst = title_basics.tconst AND t3.genres LIKE '%Tragedy%')
AND EXISTS (SELECT 1 FROM title_basics AS t4 WHERE t4.tconst = title_basics.tconst AND t4.genres LIKE '%Musical%')
AND NOT EXISTS (SELECT 1 FROM title_basics AS t5 WHERE t5.tconst = title_basics.tconst AND t5.genres LIKE '%War%')
ORDER BY title_ratings.averageRating DESC, title_basics.title ASC

