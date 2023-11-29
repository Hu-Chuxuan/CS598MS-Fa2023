SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT LIKE '%You Don\'t Mess with the Zohan (2008)%'
AND tr.averageRating > 6
AND tb.primaryTitle NOT IN ('Click  (2010)', 'American Pie  (1999)', 'Scary Movie (2000)')
ORDER BY tr.averageRating DESC
LIMIT 5