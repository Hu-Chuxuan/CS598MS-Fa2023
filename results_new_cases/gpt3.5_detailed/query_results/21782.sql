SELECT tb1.tconst, tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating, tr.numVotes
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%'
AND tb1.startYear >= 2010
AND tb1.startYear <= 2018
AND tb1.tconst NOT IN ('tt1663202', 'tt1974420', 'tt3521126')  -- Exclude titles already seen
AND tb1.tconst NOT IN ('tt1663202', 'tt1974420', 'tt3521126')  -- Exclude titles already seen
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10