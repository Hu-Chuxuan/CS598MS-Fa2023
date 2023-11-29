SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Musical%'
AND tb.startYear > 1970
AND tb.primaryTitle NOT IN ('La La Land', 'Grease', 'Mamma Mia!')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10