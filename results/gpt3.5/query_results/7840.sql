SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%' 
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt2267998', 'tt1130884', 'tt0083658', 'tt0206634')
ORDER BY tr.averageRating DESC
LIMIT 5