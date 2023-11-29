SELECT tb.primaryTitle AS Recommended_Movies
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Grease', 'West Side Story', 'Les Misérables')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5