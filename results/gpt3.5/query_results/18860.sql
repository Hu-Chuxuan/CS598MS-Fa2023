SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tr.numVotes > 1000
AND tb1.genres LIKE '%Comedy%'
AND tb1.startYear > 2003
AND tb1.tconst NOT IN (
    SELECT DISTINCT tb2.tconst
    FROM title_basics AS tb2
    WHERE tb2.primaryTitle = 'Ferris Bueller\'s Day Off'
    OR tb2.primaryTitle = 'Elf'
    AND tb2.titleType = 'movie'
)
ORDER BY tr.averageRating DESC, tb1.startYear DESC
LIMIT 5