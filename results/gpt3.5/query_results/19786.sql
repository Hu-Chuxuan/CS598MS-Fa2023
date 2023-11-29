SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Musical%'
AND tb.startYear > 1978
AND (tb.primaryTitle != 'The Sound of Music' OR tb.primaryTitle != 'Grease')
ORDER BY tr.averageRating DESC
LIMIT 5