SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%' 
OR genres LIKE '%Horror%' 
AND startYear > 2012
AND title_basics.tconst NOT IN ('tt0113497', 'tt0087800', 'tt0099864', 'tt1392190', 'tt2294629')
AND title_basics.tconst NOT IN ('tt0099864', 'tt0298130', 'tt0106226', 'tt1216496', 'tt1439572')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 10