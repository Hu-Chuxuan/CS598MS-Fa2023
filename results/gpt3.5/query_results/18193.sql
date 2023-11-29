SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle NOT IN ('Alive (1993)', 'Into the Wild (2007)')
AND (tb.primaryTitle LIKE '%Mount Everest%' OR tb.primaryTitle LIKE '%climbing%')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5