SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Monster%' 
AND (tb.startYear >= 2010) 
AND tb.titleType = 'movie' 
AND tb.tconst NOT IN ('tt1014759', 'tt0795421', 'tt3783958', 'tt0048445')
ORDER BY tr.averageRating DESC
LIMIT 5