SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t2.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.title LIKE '%Highlander%' AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.title LIKE '%The Master of Disguise (2002)%')
ORDER BY t1.averageRating DESC, t1.numVotes DESC