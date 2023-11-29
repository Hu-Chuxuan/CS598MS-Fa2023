SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_ratings.nconst = name_basics.nconst
WHERE title_basics.genres LIKE '%Horror%'
AND title_ratings.averageRating > 6.5
AND name_basics.primaryProfession LIKE '%Actor%'
AND name_basics.knownForTitles LIKE '%Jeepers Creepers%'
AND name_basics.knownForTitles LIKE '%Girls Trip%'
ORDER BY title_ratings.averageRating DESC, title_basics.startYear ASC
LIMIT 5