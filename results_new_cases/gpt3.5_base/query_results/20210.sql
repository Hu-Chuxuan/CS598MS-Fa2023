SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Fantasy%' OR tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Big Fish (2003)', 'The Hangover (2009)', 'The Lord of the Rings ', 'Sisters  (2015)') 
ORDER BY tr.averageRating DESC 
LIMIT 5