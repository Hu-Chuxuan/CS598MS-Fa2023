SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Jim Carey'
AND tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.primaryTitle NOT IN ('The Mask  (1994)', 'Liar Liar (1997)', 'Fun with Dick and Jane  (2005)')
GROUP BY recommended_movie, rating
ORDER BY rating DESC
LIMIT 5