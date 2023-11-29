SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings USING (tconst)
WHERE startYear > 2010
AND primaryTitle NOT LIKE '%Point Break (1991)%'
AND primaryTitle NOT IN ('The Devil\'s Advocate  (1997)', 'John Wick (2014)')
ORDER BY averageRating DESC
LIMIT 5