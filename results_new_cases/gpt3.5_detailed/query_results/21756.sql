SELECT tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comic Book%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC