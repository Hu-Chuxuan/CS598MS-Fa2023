SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%' 
AND tb.genres LIKE '%Family%'
AND tb.startYear < 1991
AND tb.startYear > 1968
AND tb.primaryTitle NOT IN ('Children of the Corn', "Rosemary's Baby", 'Frozen', 'The Witch')
ORDER BY tr.averageRating DESC
LIMIT 5