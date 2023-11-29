SELECT tb1.primaryTitle
FROM title_basics tb1
INNER JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Comedy%'
AND tb1.primaryTitle NOT IN ('Superbad', 'Super Troopers', 'Van Wilder', 'Dumb and Dumber')
AND tr.averageRating >= 7
ORDER BY tr.numVotes DESC
LIMIT 10