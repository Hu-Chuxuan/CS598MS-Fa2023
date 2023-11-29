SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.genres NOT LIKE '%Superhero%'
AND tb.primaryTitle NOT IN ('Wolf Creek', 'Hostel')
ORDER BY tr.averageRating DESC
LIMIT 10