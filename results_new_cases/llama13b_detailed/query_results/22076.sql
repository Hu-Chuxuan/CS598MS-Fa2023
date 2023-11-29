SELECT tconst, primaryTitle, genres, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE titleType ='movie' AND primaryTitle LIKE '%Memoirs%' AND startYear = 1986
AND (
  SELECT COUNT(*)
  FROM title_ratings
  WHERE title_ratings.tconst = title_basics.tconst
  AND userRatings = 'like'
  AND title_ratings.averageRating > 6
  AND title_ratings.numVotes > 100
) > 10
AND (
  SELECT COUNT(*)
  FROM name_basics
  WHERE name_basics.nconst = title_principals.nconst
  AND (name_basics.primaryProfession LIKE '%actor%' OR name_basics.primaryProfession LIKE '%writer%')
  AND name_basics.knownForTitles LIKE '%The Taming of the Shrew%'
) > 5
AND (
  SELECT COUNT(*)
  FROM title_principals
  WHERE title_principals.tconst = title_basics.tconst
  AND title_principals.category LIKE '%actor%'
  AND title_principals.job LIKE '%director%'
) > 3
AND (
  SELECT COUNT(*)
  FROM title_ratings
  WHERE title_ratings.tconst = title_basics.tconst
  AND userRatings = 'like'
  AND title_ratings.averageRating > 6
  AND title_ratings.numVotes > 100
) > 5

