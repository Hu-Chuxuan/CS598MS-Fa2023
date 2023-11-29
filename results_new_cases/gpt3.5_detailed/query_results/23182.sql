SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2014
AND tb.genres LIKE '%Thriller%'
AND tb.tconst NOT IN ('tt0110632', 'tt0137523', 'tt2267998')
ORDER BY tr.averageRating DESC
LIMIT 1