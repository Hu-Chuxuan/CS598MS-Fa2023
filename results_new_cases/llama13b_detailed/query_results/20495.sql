SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_basics.directors = name_basics.nconst
WHERE title_ratings.averageRating > 6.5
AND title_basics.genres LIKE '%Horror%'
AND title_basics.startYear > 2015
AND title_basics.endYear < 2020
AND name_basics.primaryProfession LIKE '%Actor%'
AND name_basics.knownForTitles LIKE '%The Dark Tower%'
AND name_basics.knownForTitles LIKE '%Annabelle 2%'
ORDER BY title_ratings.averageRating DESC