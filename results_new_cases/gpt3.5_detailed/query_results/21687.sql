SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Fantasy%'
AND tb.startYear BETWEEN 2000 AND 2020
AND tb.primaryTitle <> 'Eragon'
AND tb.primaryTitle NOT IN ('Teaching Mrs. Tingle', 'Date Night', 'Deadpool 2', 'Game Night', 'Deadpool')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5