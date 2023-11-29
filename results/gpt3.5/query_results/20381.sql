SELECT primaryTitle 
FROM title_basics 
WHERE startYear >= 2010 
AND genres LIKE '%Action%' 
AND tconst NOT IN ('tt1951264', 'tt92945', 'tt1392170', 'tt1951265')
AND tconst NOT IN (SELECT knownForTitles FROM name_basics WHERE primaryName = 'Jennifer Lawrence')
ORDER BY numVotes DESC 
LIMIT 5