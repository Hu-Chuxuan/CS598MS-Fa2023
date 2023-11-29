SELECT primaryTitle, startYear, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE startYear > 2000 
AND genres LIKE '%thriller%' 
AND primaryTitle NOT IN ('Hannibal', 'Hannibal Rising', 'Saw', 'Shutter Island', 'The Silence of the Lambs') 
ORDER BY averageRating DESC 
LIMIT 5