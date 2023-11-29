SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND NOT tb.primaryTitle IN ('House of Wax  (2005)', 'It  (2017)', 'Saw  (2004)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5