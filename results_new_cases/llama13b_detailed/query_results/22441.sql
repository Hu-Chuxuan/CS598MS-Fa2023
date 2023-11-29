SELECT * FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_ratings.nconst = name_basics.nconst
WHERE title_basics.titleType ='movie'
AND title_ratings.averageRating > 6
AND title_basics.genres LIKE '%Comedy%'
AND title_basics.genres LIKE '%Action%'
AND name_basics.primaryProfession LIKE '%Actor%'
AND name_basics.knownForTitles LIKE '%Girls Trip (2017)%'
AND name_basics.knownForTitles LIKE '%How High (2001)%'
AND name_basics.knownForTitles LIKE '%The Hangover (2009)%'
AND name_basics.knownForTitles LIKE '%Super Troopers (2001)%'
AND name_basics.knownForTitles LIKE '%Pineapple Express  (2008)%'
AND name_basics.knownForTitles LIKE '%Hangover  (2014)%'
AND name_basics.knownForTitles LIKE '%Super Troopers 2 (2018)%'
ORDER BY title_ratings.averageRating DESC