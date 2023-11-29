SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Comedy%' 
AND tb.tconst NOT IN 
    (SELECT DISTINCT tp.tconst 
     FROM title_principals tp 
     JOIN name_basics nb ON tp.nconst = nb.nconst 
     WHERE nb.primaryName = 'The Lord of the Rings: The Fellowship of the Ring (2001)') 
ORDER BY tr.numVotes DESC 
LIMIT 10