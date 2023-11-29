SELECT tb.primaryTitle 
FROM title_basics tb 
JOIN title_principals tp ON tb.tconst = tp.tconst 
JOIN name_basics nb ON tp.nconst = nb.nconst 
WHERE nb.primaryName = 'Rachel McAdams' 
AND tb.titleType = 'movie' 
AND tb.averageRating >= 7 
AND tb.numVotes > 1000 
AND tb.primaryTitle NOT IN ('Bridget Jones: The Edge of Reason (2004)', "Bridget Jones's Diary (2001)", "Bridget Jones's Baby (2016)")
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 10