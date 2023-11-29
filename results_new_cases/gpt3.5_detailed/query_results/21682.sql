SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 1988
AND tb.genres LIKE '%Foreign%'
AND tb.genres LIKE '%Weird%'
AND tb.genres LIKE '%Drama%'
AND tb.tconst <> 'tt0095765' -- excluding Cinema Paradiso from the recommendations
ORDER BY tr.averageRating DESC
LIMIT 5