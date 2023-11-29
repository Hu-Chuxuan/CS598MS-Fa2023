SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Musical%'
AND tb.startYear >= 2010
AND tb.primaryTitle NOT IN ('Jurassic World (2015)', 'The Martian  (2015)')
ORDER BY tr.averageRating DESC
LIMIT 5