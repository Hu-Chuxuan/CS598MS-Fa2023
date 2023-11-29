SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.startYear >= 1990 AND tb.startYear < 1995
AND tb.tconst NOT IN ('tt0105793', 'tt0431039', 'tt1690953') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5