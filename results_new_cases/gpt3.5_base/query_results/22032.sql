SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.primaryTitle LIKE '%Predator%' OR tb.primaryTitle LIKE '%Drive%')
AND tb.startYear >= 1980
AND tb.startYear <= 2011
AND tb.genres LIKE '%Action%' 
AND tb.tconst NOT IN ('tt0110912', 'tt2267998', 'tt0878550', 'tt0780504', 'tt4633694') 
ORDER BY tr.averageRating DESC
LIMIT 5