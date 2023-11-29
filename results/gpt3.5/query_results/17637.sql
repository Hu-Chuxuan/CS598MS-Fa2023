SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('The Duel  (2016)', 'The Legend of Ben Hall', 'The Alamo (2004)')
ORDER BY tr.averageRating DESC
LIMIT 5