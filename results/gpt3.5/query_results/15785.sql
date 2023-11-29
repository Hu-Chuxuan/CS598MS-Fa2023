SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%'
AND startYear >= 2000
AND primaryTitle NOT IN ('Going the Distance  (2010)', 'Never Been Kissed (1999)', '50 First Dates (2004)', 'Fever Pitch  (2005)', 'Music and Lyrics (2007)')
ORDER BY averageRating DESC
LIMIT 3