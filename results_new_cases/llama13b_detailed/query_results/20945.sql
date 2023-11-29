SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_basics.primaryName = name_basics.primaryName
WHERE title_ratings.averageRating > 6
AND title_basics.titleType ='movie'
AND title_basics.startYear < 2000
AND title_basics.genres LIKE '%Comedy%'
AND title_basics.genres LIKE '%Romance%'
AND name_basics.primaryProfession LIKE '%Actor%'
AND name_basics.knownForTitles LIKE '%Runaway Bride%'
AND name_basics.knownForTitles LIKE '%Enough%'
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC