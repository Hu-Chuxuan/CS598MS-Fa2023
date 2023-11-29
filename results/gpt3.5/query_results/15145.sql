SELECT tb.primaryTitle AS movie_title, tr.averageRating AS rating, tb.genres AS genre
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle NOT IN ('Harry Potter', 'Trolls')
ORDER BY tr.averageRating DESC
LIMIT 5