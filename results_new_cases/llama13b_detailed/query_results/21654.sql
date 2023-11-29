SELECT t.title_basics.title, t.title_basics.primaryTitle, t.title_basics.genres, c.name, c.knownForTitles
FROM title_basics t
JOIN name_basics c ON t.title_basics.directors = c.nconst
WHERE t.title_basics.genres LIKE '%Comedy%'
AND t.title_basics.primaryTitle NOT IN (SELECT t2.title_basics.primaryTitle FROM title_basics t2 WHERE t2.title_ratings.numVotes > (SELECT AVG(numVotes) FROM title_ratings WHERE title_basics.title_basics.title = t2.title_basics.title_basics))
AND t.title_basics.title NOT IN (SELECT t2.title_basics.title FROM title_basics t2 WHERE t2.title_ratings.numVotes > (SELECT AVG(numVotes) FROM title_ratings WHERE title_basics.title_basics.title = t2.title_basics.title_basics))
AND c.knownForTitles NOT LIKE '%Meet the Parents (2000)%'
ORDER BY RAND()