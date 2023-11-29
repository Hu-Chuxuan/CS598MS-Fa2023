SELECT tb.primaryTitle AS recommended_movie, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
JOIN title_principals tp ON tb.tconst = tp.tconst 
JOIN name_basics nb ON tp.nconst = nb.nconst 
WHERE tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Powder' AND startYear = 1995) 
AND tb.tconst != (SELECT tconst FROM title_basics WHERE primaryTitle = 'Powder' AND startYear = 1995) 
AND nb.primaryName IN ('The Italian Job (1969)', 'Gone in 60 Seconds  (2000)', 'Drive  (2011)') 
GROUP BY tb.primaryTitle, tr.averageRating 
ORDER BY tr.averageRating DESC