SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
WHERE genres LIKE '%Horror%' AND
      primaryTitle NOT IN (SELECT title FROM title_basics WHERE tconst IN (SELECT tconst FROM title_ratings WHERE numVotes > 1000))
      AND NOT EXISTS (SELECT 1 FROM title_principals WHERE nconst = name_basics.nconst AND category = 'actor')
      AND NOT EXISTS (SELECT 1 FROM title_crew WHERE nconst = name_basics.nconst AND job = 'director')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5