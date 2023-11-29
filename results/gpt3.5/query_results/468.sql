SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName IN ('Jim Carrey', 'Kevin Hart')
AND titleType = 'movie'
AND startYear > 2014
AND averageRating > 7
AND title_basics.tconst NOT IN ('tt1068680', 'tt2869728')