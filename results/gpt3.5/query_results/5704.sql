SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName IN ('Amy Adams', 'Jeremy Renner', 'Forest Whitaker')
AND titleType = 'movie'
AND genres LIKE '%Sci-Fi%'
AND averageRating >= 7
AND primaryTitle != 'Arrival (2016)'
GROUP BY title_basics.tconst
ORDER BY numVotes DESC
LIMIT 5