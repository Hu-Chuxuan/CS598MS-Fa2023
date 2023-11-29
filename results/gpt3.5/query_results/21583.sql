SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE title_basics.titleType = 'movie'
AND primaryName = 'Will Ferrell' 
AND startYear >= 2000
AND averageRating >= 7
AND title_basics.tconst NOT IN ('tt0384642', 'tt0415306')
GROUP BY title_basics.tconst
ORDER BY numVotes DESC
LIMIT 10