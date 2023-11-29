SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Harrison Ford'
AND title_basics.titleType = 'movie'
AND primaryTitle NOT IN ('London Has Fallen (2016)', '13 Hours: The Secret Soldiers of Benghazi (2016)', 'Air Force One  (1997)', 'White House Down (2013)')
ORDER BY averageRating DESC
LIMIT 5