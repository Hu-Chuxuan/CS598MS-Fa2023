SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Monster%'
AND tb.startYear > 2010
AND tb.tconst NOT IN ('tt1013548', 'tt0795421', 'tt3783958', 'tt0048445', 'tt0092890', 'tt1485796')
ORDER BY tr.averageRating DESC
LIMIT 5