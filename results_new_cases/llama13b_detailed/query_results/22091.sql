SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_ratings.nconst = name_basics.nconst
WHERE title_basics.titleType ='movie'
AND title_ratings.averageRating > 6
AND name_basics.primaryProfession LIKE '%actor%'
AND name_basics.knownForTitles LIKE '%Baby Driver  (2017)%'
AND name_basics.knownForTitles LIKE '%Tucker & Dale vs. Evil (2010)%'
AND name_basics.knownForTitles LIKE '%Drive  (2011)%'
ORDER BY title_ratings.averageRating DESC