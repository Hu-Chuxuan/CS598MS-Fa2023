SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
JOIN name_basics ON title_principals.nconst = name_basics.nconst 
WHERE primaryName = 'Kevin Bacon' 
AND title_basics.titleType = 'movie' 
AND startYear <= 2002 
AND startYear >= 1989 
AND title_basics.tconst NOT IN ('tt0208874', 'tt0240097', 'tt0163187', 'tt0452623', 'tt0104694', 'tt0104619', 'tt1194916')