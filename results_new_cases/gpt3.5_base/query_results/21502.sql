SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%'
AND tb.startYear >= 2000
AND tr.averageRating >= 8
AND tb.tconst NOT IN ('tt0407887', 'tt0099685')
ORDER BY tr.averageRating DESC
LIMIT 5