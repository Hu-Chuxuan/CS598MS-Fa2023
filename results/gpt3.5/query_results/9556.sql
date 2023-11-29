SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
JOIN title_principals tp ON tb.tconst = tp.tconst 
JOIN name_basics nb ON tp.nconst = nb.nconst 
WHERE nb.primaryName = 'Adam Sandler' AND tb.titleType = 'movie' AND tr.numVotes > 1000 
AND (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Drama%') AND tb.primaryTitle NOT IN 
('Guardians of the Galaxy', 'The Ridiculous 6', 'Punch-Drunk Love', 'Billy Madison', 'The Majestic', 'Happy Gilmore') 
GROUP BY tb.tconst 
ORDER BY tr.averageRating DESC, tr.numVotes DESC, tb.startYear DESC 
LIMIT 10