SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Stoner%'
AND tb.startYear > 2000
AND tb.primaryTitle NOT IN ('How High', 'Pineapple Express', 'Donnie Darko', 'Deadpool')
ORDER BY tr.averageRating DESC
LIMIT 5