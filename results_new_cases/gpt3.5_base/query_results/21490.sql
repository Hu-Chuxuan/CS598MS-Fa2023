SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%suspense%' OR tb.genres LIKE '%horror%' OR tb.genres LIKE '%drama%'
AND (tb.primaryTitle NOT IN ('Poltergeist', 'Mama'))
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5