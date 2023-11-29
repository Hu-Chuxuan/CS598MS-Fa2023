SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror%'
AND nb.knownForTitles LIKE '%Frozen%20(2010)%'
AND NOT EXISTS (SELECT 1 FROM title_principals tp WHERE tp.tconst = tb.tconst AND tp.category = 'actor')
AND NOT EXISTS (SELECT 1 FROM title_crew tc WHERE tc.tconst = tb.tconst AND tc.directors LIKE '%Inglourious%20Bastards%20(1978)%'])
ORDER BY averageRating DESC, numVotes DESC