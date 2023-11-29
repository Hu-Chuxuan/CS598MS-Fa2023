SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.deathYear, t2.primaryProfession, t3.job, t3.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.primaryName = t3.primaryName
WHERE t1.genres = 'alien' AND t2.averageRating > 7 AND t3.knownForTitles NOT IN (SELECT n2.knownForTitles FROM name_basics n2 WHERE n2.primaryName = 'Woody Allen')
ORDER BY t1.averageRating DESC