SELECT tb.primaryTitle, tb.startYear, tb.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.primaryTitle != 'The Shawshank Redemption'
AND tb.startYear <= 1994
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5