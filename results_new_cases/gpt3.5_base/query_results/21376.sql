SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Keanu Reeves'
AND tb.startYear <= 1999
AND tb.titleType = 'movie'
AND tr.averageRating >= 7
AND tb.tconst NOT IN ('tt0465234', 'tt2015381', 'tt0088247')  -- Exclude 'Room', 'The Commuter', 'Taken'
GROUP BY tb.primaryTitle
ORDER BY tr.averageRating DESC
LIMIT 1