SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear BETWEEN 1990 AND 2010
AND nb.primaryName IN ('Jim Carrey', 'Jeff Daniels', 'Jonah Hill', 'Michael Cera')
AND tb.primaryTitle NOT IN ('Dumb and Dumber', 'Superbad', 'Black Panther')
GROUP BY tb.primaryTitle
ORDER BY tr.averageRating DESC
LIMIT 5