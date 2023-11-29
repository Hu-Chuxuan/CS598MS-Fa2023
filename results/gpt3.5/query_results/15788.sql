SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE primaryTitle = 'The Hurt Locker' 
AND startYear = '2008'