SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' 
AND tb.startYear >= 2000 
AND tb.startYear <= 2010 
AND tb.primaryTitle != 'The Notebook'
ORDER BY tr.averageRating DESC
LIMIT 5