SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating 
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear > 2003
AND tb1.genres LIKE '%Thriller%'
AND tb1.primaryTitle NOT IN ('The Conjuring (2013)', 'Memento (2000)', 'Seven (1995)', 'The Silence of the Lambs (1991)', 'Identity (2003)')
ORDER BY tr.averageRating DESC
LIMIT 5