SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Forgetting Sarah Marshall' AND tb1.primaryTitle != 'Forgetting Sarah Marshall'
ORDER BY tr.averageRating DESC
LIMIT 5