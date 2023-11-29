SELECT tb.primaryTitle AS movie_title, tr.averageRating AS rating, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('Pitch Perfect (2012)', 'Mean Girls (2004)', 'Legally Blonde (2001)')
ORDER BY tr.averageRating DESC
LIMIT 5