SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%' AND tb1.genres LIKE '%Crime%'
AND tb1.startYear > 1996
AND tb1.tconst NOT IN ('tt0094737', 'tt0120789', 'tt0295700', 'tt0322330', 'tt0381707')
ORDER BY tr.averageRating DESC, tb1.startYear DESC
LIMIT 5