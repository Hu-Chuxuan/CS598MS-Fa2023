SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.startYear AS release_year
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 2000
AND tb.primaryTitle <> 'How to Lose a Guy in 10 Days'
AND tb.primaryTitle NOT IN ('Steel Magnolias', '9 to 5')
ORDER BY tr.averageRating DESC
LIMIT 5