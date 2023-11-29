SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%'
AND tr.averageRating >= 7.5
AND tb.tconst != 'tt0098635'  -- exclude When Harry Met Sally
AND tb.tconst NOT IN ('tt0086250')  -- exclude Scarface
LIMIT 5