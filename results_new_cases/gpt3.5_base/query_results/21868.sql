SELECT tb.primaryTitle AS recommended_movie, AVG(tr.averageRating) AS average_rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp1 ON tb.tconst = tp1.tconst
JOIN title_principals tp2 ON tp1.nconst = tp2.nconst
WHERE (tp1.primaryTitle = 'Dumb and Dumber' OR tp1.primaryTitle = 'Superbad')
AND tp2.primaryTitle NOT IN ('Talladega Nights: The Ballad of Ricky Bobby', 'Anchorman', 'Happy Gilmore')
AND tb.titleType = 'movie'
GROUP BY tb.primaryTitle
ORDER BY average_rating DESC
LIMIT 10