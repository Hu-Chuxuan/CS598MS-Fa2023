SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2017
AND tb.genres LIKE '%Drama%'
AND tr.averageRating > 7
AND tb.primaryTitle NOT IN ('The Boss  (2016)', 'Fifty Shades of Grey  (2015)')
ORDER BY tr.averageRating DESC
LIMIT 5