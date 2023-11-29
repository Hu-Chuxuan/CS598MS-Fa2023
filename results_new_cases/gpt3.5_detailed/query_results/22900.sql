SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%'
AND tb.primaryTitle NOT IN ('High Noon (1952)', 'Black Hawk Down  (2002)', 'Never Let Me Go  (2010)', 'Midway  (1976)', 'The Inglorious Bastards (1978)', 'Inglourious Basterds (2009)', 'A.I. Artificial Intelligence (2001)')
ORDER BY tr.averageRating DESC
LIMIT 5