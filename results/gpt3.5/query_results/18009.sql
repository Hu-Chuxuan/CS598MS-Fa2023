SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2010
AND tb.genres LIKE '%Romance%'
AND tb.primaryTitle NOT IN ('Hitch', 'Beauty and the Beast', 'The Notebook')
ORDER BY tr.averageRating DESC
LIMIT 5