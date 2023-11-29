SELECT tb.primaryTitle AS recommended_movies
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Action%' 
      AND nb.primaryName = 'Chris Hemsworth'
      AND tb.startYear > 2010
      AND tr.averageRating > 7
      AND (tb.primaryTitle != 'Training Day (2001)' AND tb.primaryTitle != 'The Purge (2013)')
GROUP BY recommended_movies
ORDER BY tr.numVotes DESC
LIMIT 5