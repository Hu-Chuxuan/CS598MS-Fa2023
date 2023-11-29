SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%'
AND tb.primaryTitle NOT IN ('Hangover (2010)', 'Yes  (2004)')
ORDER BY tr.averageRating DESC
LIMIT 5