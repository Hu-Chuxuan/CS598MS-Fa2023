SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Drama%'
AND startYear <= 1958
AND startYear >= 1940
AND tconst NOT IN ('tt0032976', 'tt0052311', 'tt0033467', 'tt0052357', 'tt0045798', 'tt0038913', 'tt0033870')
ORDER BY averageRating DESC
LIMIT 10