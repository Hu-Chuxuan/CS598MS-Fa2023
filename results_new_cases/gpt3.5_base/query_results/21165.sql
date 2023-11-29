SELECT tb.primaryTitle AS Recommended_Movie, tb.startYear AS Release_Year, tb.runtimeMinutes AS Runtime, tb.genres AS Genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.startYear >= 2000 
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle != 'The Hangover'
AND tb.primaryTitle NOT IN ('Mean Girls (2004)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 3