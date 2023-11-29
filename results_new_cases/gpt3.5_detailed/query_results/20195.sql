SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Comedy%'
AND tr.numVotes > 1000
AND (tb.primaryTitle != 'Hangover (2010)' AND tb.primaryTitle != 'Uncle Buck' AND tb.primaryTitle != 'Hangover  (2014)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10