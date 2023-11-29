SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres,
title_ratings.averageRating, title_ratings.numVotes,
name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
WHERE title_basics.primaryTitle IN ('Drive', 'Half Baked')
AND title_basics.genres IN ('Crime', 'Comedy')
AND title_ratings.averageRating > 7
AND title_ratings.numVotes > 1000
AND name_basics.primaryName NOT IN ('Jack Nicholson', 'Steven King')
AND NOT EXISTS (
  SELECT 1 FROM title_basics
  WHERE title_basics.tconst = title_principals.tconst
  AND title_basics.category = 'Actors'
  AND title_basics.job = 'Actor'
  AND title_basics.characters = 'Jack Nicholson'
)
AND NOT EXISTS (
  SELECT 1 FROM title_basics
  WHERE title_basics.tconst = title_principals.tconst
  AND title_basics.category = 'Authors'
  AND title_basics.job = 'Author'
  AND title_basics.characters = 'Steven King'
)
ORDER BY title_basics.startYear DESC, title_ratings.averageRating DESC