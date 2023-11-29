SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Married to the Mob (1988)', 'Casino  (1995)', 'Goodfellas (1990)', 'My Cousin Vinny (1992)')
ORDER BY tr.averageRating DESC
LIMIT 5