SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.startYear > 2010
AND tb.primaryTitle NOT IN ('Black Panther (2018)', 'Iron Man 2 (2010)', 'Justice League  (2017)', 'Avengers: Infinity War (2018)')
ORDER BY tr.averageRating DESC
LIMIT 5