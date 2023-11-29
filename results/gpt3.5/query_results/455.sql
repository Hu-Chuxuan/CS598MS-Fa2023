SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.genres NOT LIKE '%Annabelle%'
AND tb.primaryTitle NOT IN ('Planes, Trains and Automobiles (1986)', 'The Blair Witch Project (1999)')
ORDER BY tr.averageRating DESC
LIMIT 1