SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0359950', 'tt0083530', 'tt0838283', 'tt0080339', 'tt0109686')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5