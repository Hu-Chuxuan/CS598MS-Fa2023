SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
WHERE title_basics.genres LIKE '%stoner%'
AND title_ratings.averageRating > (SELECT AVG(title_ratings.averageRating) FROM title_ratings WHERE title_ratings.tconst = 'Pineapple Express (2008)')
AND title_ratings.numVotes > (SELECT COUNT(title_ratings.numVotes) FROM title_ratings WHERE title_ratings.tconst = 'Pineapple Express (2008)')
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE title_basics.tconst = 'How High (2001)')
ORDER BY title_ratings.averageRating DESC