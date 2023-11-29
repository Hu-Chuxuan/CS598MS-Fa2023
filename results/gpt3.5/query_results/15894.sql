SELECT primaryTitle 
FROM title_basics 
WHERE startYear <= 2021 
AND genres LIKE '%Christmas%' 
AND primaryTitle NOT IN ('Hocus Pocus', 'Elf') 
ORDER BY numVotes DESC 
LIMIT 1