SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle != 'Kiss the Girls' 
AND startYear >= 1990 
AND genres LIKE '%Crime%'
AND (primaryTitle LIKE '%Morgan Freeman%' OR primaryTitle LIKE '%Ashley Judd%') 
ORDER BY averageRating DESC
LIMIT 5