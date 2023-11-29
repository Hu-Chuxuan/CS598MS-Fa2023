SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%'
AND (tb.startYear >= 2000 AND tb.startYear <= 2010)
AND tb.primaryTitle != 'Knocked Up'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5