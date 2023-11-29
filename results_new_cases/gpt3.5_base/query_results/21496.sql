SELECT tb.primaryTitle AS recommended_movie, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Drama%'
AND tr.averageRating >= 7
AND tb.startYear >= 2000
AND tb.startYear <= 2010
AND tb.primaryTitle NOT IN ('The Butterfly Effect (2004)', 'Crash (2004)')
ORDER BY tr.averageRating DESC, tb.startYear ASC
LIMIT 5