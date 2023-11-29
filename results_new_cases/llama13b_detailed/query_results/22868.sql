SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Musical' AND t.startYear = 2012
AND n.primaryProfession LIKE '%Actor'
AND NOT EXISTS (SELECT 1 FROM title_principals tp WHERE tp.tconst = t.tconst AND tp.category = 'actor')
AND NOT EXISTS (SELECT 1 FROM title_crew tc WHERE tc.tconst = t.tconst AND tc.directors LIKE '%Tom Cruise%')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5