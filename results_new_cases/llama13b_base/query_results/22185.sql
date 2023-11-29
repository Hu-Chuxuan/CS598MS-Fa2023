SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.genres, name_basics.primaryName, title_crew.directors, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Horror'
AND title_ratings.averageRating > 7
AND name_basics.primaryName NOT IN ('Jack Nicholson', 'Ralph Macchio')
AND title_crew.directors NOT IN ('Stanley Kubrick', 'John Carpenter')
AND title_principals.characters NOT IN ('Danny Torrance', 'Daniel LaRusso')
AND title_basics.startYear > 1970
AND title_basics.endYear < 2020
AND title_basics.runtimeMinutes > 90
AND title_basics.isAdult = 0

