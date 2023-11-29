SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
JOIN title_principals tp ON tb.tconst = tp.tconst 
JOIN name_basics nb ON tp.nconst = nb.nconst 
WHERE nb.primaryName = 'Brad Pitt' 
AND tb.titleType = 'movie' 
AND tb.startYear >= 1980 
AND tb.startYear <= 1990 
AND tr.numVotes > 1000 
AND tb.primaryTitle NOT IN ('National Lampoon\'s Vacation (1983)', 'Porky\'s (1981)', 'Animal House (1978)') 
ORDER BY tr.averageRating DESC 
LIMIT 5