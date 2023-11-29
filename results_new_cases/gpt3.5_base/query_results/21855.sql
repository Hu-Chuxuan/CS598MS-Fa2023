SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND (tb.primaryTitle = 'Dumb and Dumber' OR tb.primaryTitle = 'Superbad')
AND tb.primaryTitle NOT IN ('Hot Tub Time Machine', 'Office Space (1999)', 'Superbad  (2007)', 'The 40-Year-Old Virgin (2005)', 'Dumb and Dumber (1994)')
ORDER BY tr.averageRating DESC
LIMIT 10