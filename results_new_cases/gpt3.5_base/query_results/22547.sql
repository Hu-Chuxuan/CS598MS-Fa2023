SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2010
AND tb.genres LIKE '%Animation%'
AND tb.primaryTitle NOT IN ('Toy Story (1995)', 'Coco  (2017)', 'Coraline  (2009)', 'Finding Dory (2016)', 'Mary Poppins  (1964)')
ORDER BY tr.averageRating DESC
LIMIT 5