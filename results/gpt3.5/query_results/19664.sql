SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie' 
AND startYear = 1995 
AND (genres LIKE '%Comedy%' OR genres LIKE '%Romance%') 
AND title_basics.tconst NOT IN 
  (SELECT tconst 
   FROM title_basics 
   WHERE startYear = 1987 
   AND primaryTitle LIKE '%Wall Street%')
AND title_basics.tconst NOT IN 
  (SELECT tconst 
   FROM title_basics 
   WHERE primaryTitle IN ('Fool\'s Gold (2008)', 'Romancing the Stone (1984)'))
ORDER BY averageRating DESC