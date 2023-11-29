SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle != 'Norbit (2007)' 
AND primaryTitle != 'Dr. Dolittle  (1998)' 
AND primaryTitle != 'Coming to America (1988)' 
AND primaryTitle NOT LIKE '%(TV Movie%'
AND primaryTitle NOT LIKE '%(TV Special%'
AND primaryTitle NOT LIKE '%(TV Series%'
AND genres LIKE '%Comedy%' 
AND startYear <= 1988 
AND averageRating >= 7
ORDER BY averageRating DESC
LIMIT 5