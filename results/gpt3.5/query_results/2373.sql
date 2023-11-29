SELECT tb.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear > 1997
AND tb.titleType = 'movie'
AND tb.tconst NOT IN ('tt0120338', 'tt0107818', 'tt0120334', 'tt03225', 'tt0078950', 'tt0100157')
ORDER BY tr.averageRating DESC
LIMIT 5