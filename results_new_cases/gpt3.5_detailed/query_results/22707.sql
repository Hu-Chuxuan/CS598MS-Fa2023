SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Animation%')
AND tb.startYear >= 2000
AND tb.startYear < 2018
AND tb.tconst NOT IN ('tt0317705', 'tt1226229', 'tt1099350', 'tt0103241', 'tt0247745', 'tt0083131', 'tt0910936', 'tt0120693') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5