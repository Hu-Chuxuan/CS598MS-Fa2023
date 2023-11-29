SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Crime%' OR tb.genres LIKE '%Drama%') 
AND tb.startYear BETWEEN 1990 AND 1999 
AND tb.tconst NOT IN ('tt0100502', 'tt1615918', 'tt1152822')
ORDER BY tr.averageRating DESC
LIMIT 5