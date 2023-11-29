SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.primaryName
WHERE title_basics.genres LIKE '%Comedy%'
AND title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE numVotes > 100)
AND title_basics.startYear <= 1989
AND title_basics.endYear >= 1980
AND name_basics.knownForTitles LIKE '%Blade Runner (1982)%'
AND name_basics.knownForTitles LIKE '%Cocoon (1985)%'
AND name_basics.knownForTitles LIKE '%The Abyss (1989)%'
ORDER BY title_ratings.averageRating DESC