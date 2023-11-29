SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Action%' 
    AND nb.primaryName = 'Chris Hemsworth'
    AND tb.primaryTitle NOT IN ('Training Day (2001)', 'The Purge (2013)')
ORDER BY tb.averageRating DESC
LIMIT 5