SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%' 
AND tb.startYear >= 1980
AND tb.startYear <= 1990
AND tr.averageRating >= 8
AND tb.tconst != 'tt0095953'
LIMIT 5