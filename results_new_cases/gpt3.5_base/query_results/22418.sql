SELECT primaryTitle 
FROM title_basics 
WHERE genres LIKE '%Action%' OR genres LIKE '%Adventure%' 
AND primaryTitle NOT IN ('The Boy (2016)', 'It (2017)', 'Mama (2013)')
ORDER BY averageRating DESC
LIMIT 5