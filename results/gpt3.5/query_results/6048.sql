SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS average_rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%' 
AND tb1.genres LIKE '%Romance%' 
AND tb1.startYear > 2000 
AND tr.numVotes > 1000 
AND tb1.tconst NOT IN 
    (SELECT tp.tconst 
     FROM title_principals AS tp 
     JOIN name_basics AS nb ON tp.nconst = nb.nconst 
     WHERE nb.primaryName = 'Kate Winslet' 
     OR nb.primaryName = 'Cameron Diaz' 
     OR nb.primaryName = 'Reese Witherspoon') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5