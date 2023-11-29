SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%' AND startYear BETWEEN 1980 AND 2015
AND primaryTitle NOT IN ('Commando', 'Rambo III', 'Rambo', '13 Hours: The Secret Soldiers of Benghazi')
ORDER BY averageRating DESC
LIMIT 5