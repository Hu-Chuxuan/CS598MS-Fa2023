SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie' 
AND title_basics.startYear >= 1990 
AND title_basics.genres LIKE '%Drama%' 
AND title_basics.genres LIKE '%Romance%'
AND title_basics.genres NOT LIKE '%Adult%'
AND title_basics.primaryTitle NOT IN ('Call Me by Your Name (2017)', 'The Bridge (2006)', 'Reservoir Dogs (1992)', 'Zootopia')
ORDER BY averageRating DESC
LIMIT 5