SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%' 
AND tb.startYear >= 2000 
AND tb.startYear <= 2016 
AND tr.averageRating >= 7
AND (tb.primaryTitle != 'Nocturnal Animals' OR tb.startYear != 2016)
AND tb.primaryTitle NOT IN ('Little Nicky', 'Superbad', 'The 40-Year-Old Virgin')
ORDER BY tr.averageRating DESC
LIMIT 5