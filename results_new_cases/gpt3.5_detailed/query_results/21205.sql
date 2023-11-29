SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres AS movie_genre, tr.averageRating AS rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy%'
AND tb1.startYear IN (2017, 2018)
AND tb1.primaryTitle NOT IN ('Girls Trip','Game Night','Titanic','Casino','The Godfather','Godfather')
ORDER BY tr.averageRating DESC
LIMIT 5