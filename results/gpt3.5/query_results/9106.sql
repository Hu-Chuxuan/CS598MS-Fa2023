SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.genres LIKE '%Sci-Fi%'
AND tb.genres NOT LIKE '%Disaster%'
AND tb.primaryTitle NOT LIKE '%Noah%'
AND tb.tconst NOT IN ('tt0092005', 'tt0092086', 'tt0343818', 'tt0962718')
ORDER BY tr.averageRating DESC
LIMIT 10