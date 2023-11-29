SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE title_ratings.averageRating > 6 AND title_basics.genres LIKE '%Action%' AND title_basics.genres LIKE '%Romance%'
AND name_basics.primaryProfession LIKE '%Actor%'
AND name_basics.knownForTitles LIKE '%Sarah, Plain and Tall%'
AND name_basics.knownForTitles LIKE '%The Seventh Sign (1988)%'
AND name_basics.knownForTitles LIKE '%The Prophecy (1995)%'
AND name_basics.knownForTitles LIKE '%Pulp Fiction (1994)%'
AND name_basics.knownForTitles LIKE '%The Dead Zone  (1983)%'
ORDER BY title_ratings.averageRating DESC