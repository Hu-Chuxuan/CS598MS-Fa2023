SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%' AND genres LIKE '%Comedy%'
AND startYear >= 2000 
AND startYear < 2023
AND primaryTitle != 'Knocked Up'
AND primaryTitle NOT IN ('Love Actually', 'Crazy, Stupid, Love', 'Pretty Woman', 'When Harry Met Sally...')
ORDER BY averageRating DESC
LIMIT 5