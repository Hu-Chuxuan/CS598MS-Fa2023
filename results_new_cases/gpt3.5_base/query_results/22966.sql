SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Adventure%'
AND tr.averageRating > 7
AND tb.primaryTitle NOT IN ('Moana  (2016)', 'It (1990)', 'It  (2017)', 'The Kite  (2003)', 'Lost  (2004)', 'Princess  (2008)')
ORDER BY tr.averageRating DESC
LIMIT 1