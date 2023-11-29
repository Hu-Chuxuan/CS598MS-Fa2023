SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Animation%' 
AND (primaryTitle LIKE '%Finding Dory%' OR primaryTitle LIKE '%Finding Nemo%') 
AND startYear > 2000
AND averageRating > 7
AND primaryTitle NOT IN ('It  (2017)', 'Ring  (1998)', 'Jigsaw (2017)')
ORDER BY averageRating DESC, startYear DESC
LIMIT 5