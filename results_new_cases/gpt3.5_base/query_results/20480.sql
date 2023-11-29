SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%' OR tb.genres LIKE '%Thriller%'
AND (tb.primaryTitle != 'Vanilla Sky' OR tb.startYear != 2001)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5