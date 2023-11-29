SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres NOT LIKE '%Horror%'
AND tb.genres NOT LIKE '%Thriller%'
AND tr.averageRating > 6.5
AND tb.tconst NOT IN ('tt0387564', 'tt0263488', 'tt0117571')