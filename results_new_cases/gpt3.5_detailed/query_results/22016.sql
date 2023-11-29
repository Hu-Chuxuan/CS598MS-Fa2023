SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.startYear < 1990
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Comedy%'
AND tr.averageRating >= 7
AND nb.primaryName != 'The Goonies'
AND nb.primaryName NOT IN ('Saw', 'Cube')
GROUP BY tb.tconst
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5