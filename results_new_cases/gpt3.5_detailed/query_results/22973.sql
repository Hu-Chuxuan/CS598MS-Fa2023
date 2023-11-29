SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' 
AND genres NOT LIKE '%Slapstick%'
AND startYear >= 1990
AND tconst NOT IN ('tt0101414', 'tt0265086')  -- Excluding previously watched titles
ORDER BY averageRating DESC
LIMIT 5