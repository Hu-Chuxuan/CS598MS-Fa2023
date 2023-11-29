SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear > 1990
AND tb.startYear < 2010
AND (tb.primaryTitle LIKE '%Dumb and Dumber%' OR tb.primaryTitle LIKE '%Superbad%' OR tb.primaryTitle IN ('Talladega Nights: The Ballad of Ricky Bobby (2006)', 'Anchorman', 'Happy Gilmore (1996)'))
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10