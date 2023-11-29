SELECT tb.tconst, tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.tconst NOT IN ('tt0289043', 'tt0133093')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5