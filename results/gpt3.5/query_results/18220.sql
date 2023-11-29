SELECT tb.tconst, tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.primaryTitle NOT IN ('Bad Santa (2003)', 'Fight Club (1999)')
AND tp.category = 'director'
AND nb.primaryName = 'The Coen Brothers'
AND tb.primaryTitle LIKE '%bowling%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5