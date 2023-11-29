SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tb.primaryName = nb.nconst
JOIN title_crew tc ON tb.directors = tc.directors
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.genres = 'Comedy'
AND tp.category = 'Actors'
AND tp.job = 'Actor'
AND tp.characters LIKE '%silly%'
AND tr.averageRating > 7
AND NOT EXISTS (SELECT 1 FROM title_ratings tr2 WHERE tr2.tconst = tb.tconst AND tr2.numVotes > 1000)
ORDER BY tr.averageRating DESC