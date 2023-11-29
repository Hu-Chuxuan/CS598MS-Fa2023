SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 2018
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Fantasy%'
AND tb.primaryTitle NOT IN ('Thor: Ragnarok', 'Thor: The Dark World', 'Avengers: Infinity War', 'Wonder Woman', 'Captain America: The First Avenger', 'Captain America: The Winter Soldier', 'Captain America: Civil War', 'The Dark Knight')
ORDER BY tr.averageRating DESC
LIMIT 5