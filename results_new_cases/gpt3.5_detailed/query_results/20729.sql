SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%'
AND primaryTitle NOT IN ('The Notebook (2004)', 'La La Land  (2016)', 'Love Actually (2003)')
ORDER BY averageRating DESC
LIMIT 5