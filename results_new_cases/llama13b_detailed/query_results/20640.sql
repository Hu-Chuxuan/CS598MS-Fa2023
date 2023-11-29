SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_basics.directors = name_basics.nconst
WHERE title_ratings.averageRating > 5 AND genre = 'Comedy'
AND name_basics.primaryProfession LIKE '%actor%'
AND name_basics.knownForTitles LIKE '%The Mask  (1994)%'
AND name_basics.knownForTitles LIKE '%Click  (2006)%'
ORDER BY title_ratings.averageRating DESC, title_basics.startYear ASC