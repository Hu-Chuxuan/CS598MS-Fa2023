SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('Toy Story (1995)', 'The Secret Life of Pets (2016)', 'Ferdinand (2017)')
ORDER BY tr.averageRating DESC
LIMIT 5