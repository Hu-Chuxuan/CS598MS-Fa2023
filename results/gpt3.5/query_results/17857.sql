SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Comedy%' 
AND tb.startYear > 1990 
AND tr.averageRating > 6 
AND nb.primaryName = 'Jim Carrey'
AND tb.primaryTitle NOT IN ('The Mask  (1994)', 'The Hangover (2009)', 'Wedding Crashers (2005)')
GROUP BY tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
ORDER BY tr.averageRating DESC
LIMIT 10