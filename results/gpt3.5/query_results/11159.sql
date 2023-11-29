SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 1980 AND tb.startYear < 1990
AND tb.titleType = 'movie'
AND tb.genres LIKE '%'
AND tb.tconst NOT IN ('tt0099685', 'tt0084827')  -- excluding movies already seen
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10