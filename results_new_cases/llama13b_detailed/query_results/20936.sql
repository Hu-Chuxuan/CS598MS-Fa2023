SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_ratings.nconst = name_basics.nconst
WHERE title_basics.genres LIKE '%Action%' AND title_basics.genres LIKE '%Comedy%'
AND name_basics.primaryProfession LIKE '%Actor%'
AND title_ratings.averageRating > 6
ORDER BY title_ratings.averageRating DESC, title_basics.startYear ASC