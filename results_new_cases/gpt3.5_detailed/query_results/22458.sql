SELECT tb1.primaryTitle AS RecommendedMovie, tb1.startYear AS ReleaseYear, tr.averageRating AS AverageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%' 
AND tb1.startYear > 2000
AND (tb1.primaryTitle = 'Pineapple Express' OR tb1.primaryTitle = '21 Jump Street')
AND tb1.primaryTitle NOT IN ('Psycho', 'Mama', 'It', 'The Boy')
ORDER BY tr.averageRating DESC