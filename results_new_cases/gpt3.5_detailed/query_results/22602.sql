SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN name_basics nb ON tc.directors = nb.nconst
WHERE tb.startYear < 1960
AND nb.primaryName = 'Alfred Hitchcock'
AND tb.genres IS NOT NULL
AND tr.averageRating >= 7
AND tb.tconst NOT IN ('tt0052357', 'tt0048728') -- Excluding 'Vertigo' and 'To Catch a Thief'
ORDER BY tr.numVotes DESC
LIMIT 10