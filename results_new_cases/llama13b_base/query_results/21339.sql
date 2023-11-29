SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_ratings.averageRating, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.primaryTitle LIKE '%Sandra Bullock%'
AND title_ratings.averageRating > 7
AND title_principals.characters LIKE '%Sandra Bullock%'
AND NOT EXISTS (
  SELECT 1 FROM title_basics
  WHERE title_basics.tconst = title_principals.tconst
  AND title_basics.startYear < 2000
)
AND NOT EXISTS (
  SELECT 1 FROM title_basics
  WHERE title_basics.tconst = title_crew.tconst
  AND title_basics.startYear < 2000
)
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC