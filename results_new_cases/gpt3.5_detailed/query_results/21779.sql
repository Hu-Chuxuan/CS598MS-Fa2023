SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Science%' AND tb.startYear >= 2010
AND (tb.primaryTitle != 'Black Panther (2018)' AND tb.primaryTitle != 'Deadpool 2 (2018)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5