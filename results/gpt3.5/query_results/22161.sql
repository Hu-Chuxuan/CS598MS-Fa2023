SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Fantasy%' AND tb.startYear BETWEEN 2000 AND 2005
AND tb.tconst NOT IN ('tt0334965', 'tt0120623', 'tt0302640', 'tt0325592', 'tt0381707')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5