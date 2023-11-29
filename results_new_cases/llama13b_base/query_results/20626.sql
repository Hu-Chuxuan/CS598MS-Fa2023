SELECT title_basics.title, title_basics.primaryTitle, title_basics.startYear, title_basics.runtimeMinutes, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Comedy'
AND title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'American Pie'))
ORDER BY title_ratings.averageRating DESC