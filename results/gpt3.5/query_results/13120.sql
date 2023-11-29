SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Drama%')
AND tb.genres LIKE '%Movie%'
AND tb.startYear <= 2004
AND tr.numVotes > 1000
AND tb.tconst NOT IN ('tt0332280')