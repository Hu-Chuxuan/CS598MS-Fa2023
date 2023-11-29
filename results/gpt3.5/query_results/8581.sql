SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 2000
AND tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.tconst NOT IN ('tt0116629', 'tt0910970', 'tt0116629', 'tt0343818')
ORDER BY tr.averageRating DESC
LIMIT 5