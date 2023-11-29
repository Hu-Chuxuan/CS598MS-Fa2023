SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear = 2014
AND primaryTitle != 'Silver Linings Playbook (2012)'
AND primaryTitle != 'Joy  (2015)'
ORDER BY averageRating DESC
LIMIT 5