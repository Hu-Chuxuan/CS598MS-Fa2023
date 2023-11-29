SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle NOT IN ('Manhunt: The Search for Bin Laden (2013)', '9/11 (2017)', 'Finding Nemo (2003)', 'United 93  (2006)')
AND startYear <= 2022
ORDER BY averageRating DESC
LIMIT 10