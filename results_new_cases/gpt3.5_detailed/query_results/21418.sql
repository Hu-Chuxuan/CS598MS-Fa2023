SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%' 
AND tb.startYear > 1977 
AND tr.averageRating > 7
AND tb.tconst NOT IN ('tt0076759', 'tt0468569', 'tt0054215')