SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS movie_rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Animation%'
AND tb.tconst NOT IN ('tt0114709', 'tt0454876', 'tt0327597', 'tt2277860', 'tt0058331')
ORDER BY tr.averageRating DESC
LIMIT 5