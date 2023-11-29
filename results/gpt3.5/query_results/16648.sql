SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.genres LIKE '%Gore%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0450278', 'tt0329101')