SELECT tb1.primaryTitle AS recommended_movie, 
       tb1.startYear AS release_year, 
       tb1.genres AS genre
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE (tb1.genres LIKE '%Comedy%' OR tb1.genres LIKE '%Action%')
AND tb1.startYear BETWEEN 2000 AND 2022
AND (tb1.primaryTitle <> 'Pineapple Express' AND tb1.primaryTitle <> '21 Jump Street')
AND (tr.averageRating >= 7.5 AND tr.numVotes > 50000)
ORDER BY tr.averageRating DESC
LIMIT 5