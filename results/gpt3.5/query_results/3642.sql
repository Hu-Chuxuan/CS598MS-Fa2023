SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.startYear <= 2017
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN (
    'tt6359956', 'tt1981128', 'tt2387559', 'tt5657846', 'tt4702750'  -- Exclude movies from user's preference history
)
ORDER BY tr.averageRating DESC
LIMIT 5