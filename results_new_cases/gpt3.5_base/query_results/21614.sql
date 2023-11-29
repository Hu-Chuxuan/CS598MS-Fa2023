SELECT tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tb1.genres
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Fantasy%' AND tb1.genres LIKE '%Action%' 
AND tb1.primaryTitle != 'Highlander II: The Quickening'
AND tb1.primaryTitle NOT IN ('Jack Reacher: Never Go Back (2016)', 'Mission: Impossible II (2000)', 'Mission: Impossible  (1996)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5