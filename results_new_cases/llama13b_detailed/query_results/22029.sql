SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_ratings.nconst = name_basics.nconst
WHERE title_basics.titleType ='movie'
AND title_ratings.averageRating > 6
AND title_basics.genres LIKE '%Comedy%'
AND name_basics.primaryProfession LIKE '%Actor%'
AND name_basics.knownForTitles LIKE '%Daddy%s Home%'
AND title_ratings.numVotes > 1000
ORDER BY title_ratings.averageRating DESC