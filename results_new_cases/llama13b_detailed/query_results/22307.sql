SELECT * FROM title_basics
WHERE genres LIKE '%Adventure%' AND (
    (startYear BETWEEN 1980 AND 1995) OR 
    (startYear BETWEEN 1950 AND 1980 AND endYear IS NULL)
) AND (
    (runtimeMinutes > 120) OR 
    (runtimeMinutes <= 120 AND genres LIKE '%Romance%')
) AND (
    (primaryTitle LIKE '%Guns%' OR primaryTitle LIKE '%Stone%' OR primaryTitle LIKE '%Outlaws%'])
GROUP BY primaryTitle
HAVING COUNT(*) > (SELECT COUNT(*) FROM title_ratings WHERE nconst IN (SELECT nconst FROM name_basics WHERE primaryName = 'Charlie Sheen'))
ORDER BY averageRating DESC