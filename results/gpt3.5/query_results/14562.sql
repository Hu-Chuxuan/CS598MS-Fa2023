SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tr.averageRating >= 6.0
AND tb.tconst NOT IN ('tt2334873', 'tt1528854')
AND tb.tconst NOT IN ('tt2422490', 'tt2557490')
ORDER BY tr.numVotes DESC
LIMIT 5