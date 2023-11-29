SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND (tb.genres LIKE '%Sci-Fi%' OR tb.genres LIKE '%Fantasy%')
AND tb.startYear > 2013
AND tb.primaryTitle NOT IN ('Love Actually (2003)', 'The Secret Life of Walter Mitty  (2013)', 'About Time  (2013)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5