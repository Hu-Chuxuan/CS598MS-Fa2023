SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.startYear > 2010
AND tr.averageRating > 7
AND tb.tconst NOT IN ('tt1133985', 'tt0109686', 'tt1250777')