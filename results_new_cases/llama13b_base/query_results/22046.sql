SELECT t1.title, t1.averageRating, t1.numVotes, t2.name, t2.primaryProfession, t3.category, t3.job, t4.characters 
FROM title_basics t1 
JOIN title_ratings t2 ON t1.tconst = t2.tconst 
JOIN name_basics t3 ON t1.primaryName = t3.nconst 
JOIN title_crew t4 ON t1.directors = t4.tconst 
WHERE t1.genres LIKE '%comedy%' AND t2.averageRating > 7 AND t3.knownForTitles LIKE '%Superbad%') OR (t3.knownForTitles LIKE '%Grown Ups%') OR (t1.title LIKE '%Ace Ventura%')
GROUP BY t1.title, t1.averageRating, t1.numVotes, t2.name, t2.primaryProfession, t3.category, t3.job, t4.characters
ORDER BY t1.averageRating DESC, t1.numVotes DESC