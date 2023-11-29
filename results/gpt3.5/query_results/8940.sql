SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.originalTitle LIKE '%Maleficent%' OR tb.originalTitle LIKE '%Snow White%')
AND (tb.titleType = 'movie' AND tb.isAdult = 0)
AND (tb.startYear >= 1980)
AND (tb.genres LIKE '%Fantasy%' OR tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Drama%')
AND tb.tconst NOT IN ('tt1587310', 'tt0110357', 'tt0092991', 'tt0167404')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5