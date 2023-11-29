SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_basics.directors = name_basics.nconst
WHERE title_ratings.averageRating > 6
AND title_basics.genres LIKE '%Comedy%'
AND name_basics.primaryProfession LIKE '%Actor%'
AND name_basics.knownForTitles LIKE '%Foul Play (1977)%'
AND name_basics.knownForTitles LIKE '%National Lampoon%'