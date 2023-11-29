SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres NOT LIKE '%Dumb%'
AND tb.startYear > 2012
AND tb.tconst NOT IN ('tt1981677', 'tt2283362')  -- tt1981677 is Pitch Perfect (2012), tt2283362 is Pitch Perfect 3 (2017)
ORDER BY tr.numVotes DESC
LIMIT 5