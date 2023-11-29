SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 1980
AND tb.tconst NOT IN ('tt0098258', 'tt0829482', 'tt0477348', 'tt0780504', 'tt1547234')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5