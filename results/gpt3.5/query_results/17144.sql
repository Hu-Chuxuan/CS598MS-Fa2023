SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt0116091', 'tt0142971', 'tt0080516', 'tt1560985', 'tt0056869', 'tt0099052', 'tt0258463', 'tt0100157', 'tt3065204')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5