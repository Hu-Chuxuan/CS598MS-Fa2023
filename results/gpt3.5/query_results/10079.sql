SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.startYear AS release_year
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres NOT LIKE '%Adult%'
AND tb.primaryTitle NOT LIKE '%Bond%'
AND tb.primaryTitle != 'Raiders of the Lost Ark'
AND tb.startYear >= 1980
ORDER BY tr.averageRating DESC
LIMIT 5