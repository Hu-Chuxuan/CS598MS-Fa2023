SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.startYear > 2010
AND tb1.genres LIKE '%Animation%'
AND tb1.primaryTitle != 'Coco'
AND tb1.primaryTitle NOT IN ('The Incredibles', 'Brave', 'Tangled', 'Finding Dory', 'The Little Prince')
ORDER BY tr.averageRating DESC
LIMIT 5