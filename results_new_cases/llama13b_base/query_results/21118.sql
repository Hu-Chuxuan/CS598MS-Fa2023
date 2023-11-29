SELECT t1.title, t1.averageRating, t1.numVotes, t2.name, t2.birthYear, t2.primaryProfession, t3.category, t3.job, t3.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.nconst = t3.nconst
WHERE t1.genres LIKE '%mystery'
AND t2.averageRating > (SELECT AVG(t4.averageRating) FROM title_ratings t4 WHERE t4.tconst = t1.tconst)
AND t3.knownForTitles NOT IN (SELECT nconst FROM name_basics WHERE birthYear = 1999)
ORDER BY t1.averageRating DESC