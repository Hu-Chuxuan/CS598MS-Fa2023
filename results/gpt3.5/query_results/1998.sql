SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Bridesmaids', 'Superbad', 'Step Brothers', 'Anchorman', 'There\'s Something About Mary')
AND tb.startYear >= 1990
ORDER BY tr.averageRating DESC
LIMIT 5