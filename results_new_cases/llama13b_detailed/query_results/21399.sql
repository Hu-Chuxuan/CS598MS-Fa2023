SELECT * FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
JOIN name_basics
ON title_basics.directors = name_basics.nconst
WHERE title_ratings.averageRating > 6.5
AND title_basics.titleType ='movie'
AND title_basics.startYear BETWEEN 1990 AND 1999
AND name_basics.primaryProfession = 'actor'
AND name_basics.knownForTitles = 'Pretty Woman (1990)'
ORDER BY title_ratings.averageRating DESC