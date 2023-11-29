SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Sci-Fi%' 
AND tconst NOT IN ('tt1345836', 'tt5463162', 'tt1375666', 'tt0110632') 
ORDER BY averageRating DESC 
LIMIT 10