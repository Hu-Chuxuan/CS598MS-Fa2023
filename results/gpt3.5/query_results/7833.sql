SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
INNER JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear > 2011
AND tb.startYear < 2023
AND tb.tconst NOT IN ('tt2024544', 'tt1454029')  -- excluding '12 Years a Slave' and 'The Help'
ORDER BY tr.averageRating DESC
LIMIT 1