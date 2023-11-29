SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE title_ratings.averageRating > 5
AND title_basics.genres LIKE '%Comedy%'
AND title_basics.genres LIKE '%Horror%'
AND name_basics.primaryProfession LIKE '%Actor%'
AND name_basics.knownForTitles LIKE '%Fifty Shades of Grey (2015)%'
ORDER BY title_ratings.averageRating DESC