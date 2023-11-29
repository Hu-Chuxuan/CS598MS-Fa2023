SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear < 1991
AND tb1.genres LIKE '%Animation%'
AND tb1.genres LIKE '%Family%'
AND tb1.originalTitle NOT IN ('Children of the Corn (1984)', "Rosemary's Baby (1968)", 'Frozen (2010)', 'The Witch (2015)')
ORDER BY tr.averageRating DESC
LIMIT 5