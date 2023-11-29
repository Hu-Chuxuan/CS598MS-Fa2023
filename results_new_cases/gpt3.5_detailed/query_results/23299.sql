SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' 
AND tb.startYear >= 2013 
AND tb.startYear <= 2015 
AND tb.tconst NOT IN ('tt2184339', 'tt0936501', 'tt0122933', 'tt5052448', 'tt5553494')
ORDER BY tr.averageRating DESC
LIMIT 5