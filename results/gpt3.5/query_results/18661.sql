SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%' 
AND tb.startYear > 1990
AND tb.primaryTitle NOT IN ('Mean Girls (2004)', 'Flubber  (1997)', 'Mrs. Doubtfire (1993)', 'Halloween  (1978)', 'Grumpy Old Men  (1993)')
ORDER BY tr.averageRating DESC
LIMIT 5