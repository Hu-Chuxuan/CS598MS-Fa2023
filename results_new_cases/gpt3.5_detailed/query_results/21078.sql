SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 2000
AND genres LIKE '%Action%'
AND genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Coming Home  (2012)', 'Mermaid  (2000)', 'Black Panther (2018)', 'Jumanji  (2017)', 'Train Ride (2005)')
ORDER BY averageRating DESC
LIMIT 10