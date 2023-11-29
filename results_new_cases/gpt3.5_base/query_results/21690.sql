SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Battlefield Earth' AND startYear = 2000)
AND tr.averageRating > 6
AND tb.primaryTitle NOT IN ('Fargo', 'Terminator 2: Judgment Day', 'Pulp Fiction', 'The Terminator')
ORDER BY tr.averageRating DESC
LIMIT 5