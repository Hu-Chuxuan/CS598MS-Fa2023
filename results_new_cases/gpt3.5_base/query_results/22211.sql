SELECT distinct tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.primaryTitle NOT IN ('American Outlaws (2001)', 'Desparado (1995)', 'The Magnificent Seven (2016)', 'True Grit (2010)')
AND tr.averageRating >= 7.0
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5