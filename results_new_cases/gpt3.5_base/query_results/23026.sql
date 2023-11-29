SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('A Fish Called Wanda (1988)', 'Trading Places (1983)')
ORDER BY tr.averageRating DESC
LIMIT 5