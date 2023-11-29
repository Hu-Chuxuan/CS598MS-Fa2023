SELECT title_basics.title, title_basics.primaryTitle, title_ratings.averageRating, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres NOT IN ('war')
AND title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE title_basics.tconst = title_ratings.tconst AND genres = 'horror')
AND title_basics.primaryTitle NOT IN ('The Shining', 'The Witch', 'Resolution')
AND title_principals.characters NOT IN ('Mission: Impossible', 'The Manchurian Candidate (2004)', 'Gone Girl (2014)')
ORDER BY title_ratings.averageRating DESC