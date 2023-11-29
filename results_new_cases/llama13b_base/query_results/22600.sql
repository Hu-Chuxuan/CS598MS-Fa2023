SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes 
FROM title_basics t1 
JOIN title_ratings t2 ON t1.tconst = t2.tconst 
WHERE t1.genres = 'Comedy' AND t2.averageRating > 7 AND t2.numVotes > 1000 
AND NOT EXISTS (SELECT 1 FROM title_principals t3 WHERE t3.tconst = t1.tconst AND t3.job = 'Director' AND t3.name IN ('Guillermo del Toro', 'James Cameron')) 
AND NOT EXISTS (SELECT 1 FROM name_basics t4 WHERE t4.nconst = t1.primaryTitle AND t4.primaryProfession = 'Actor' AND t4.knownForTitles IN ('The Shape of Water (2017)', 'The Sixth Sense (1999)')) 
ORDER BY t2.averageRating DESC, t1.startYear DESC