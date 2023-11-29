SELECT tb.primaryTitle AS recommended_movie,
       tb.startYear AS release_year,
       tr.averageRating AS rating,
       tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Musical%'
AND tb.startYear >= 2012
AND tb.tconst NOT IN ('tt1860353', 'tt1485796', 'tt2180411')  -- excluding user's historical preferences
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5