SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.startYear >= 2000
AND tr.averageRating > 7.5
AND tb.primaryTitle NOT IN ('Superbad', 'Dumb and Dumber', 'Hot Fuzz', 'Armageddon')
LIMIT 5