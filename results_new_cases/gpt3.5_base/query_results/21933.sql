SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Sci-Fi%'
AND (tb.startYear BETWEEN 1999 AND 2003) 
AND tb.primaryTitle NOT IN ('The Matrix (1999)', 'True Lies (1994)', 'A Walk to Remember (2002)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5