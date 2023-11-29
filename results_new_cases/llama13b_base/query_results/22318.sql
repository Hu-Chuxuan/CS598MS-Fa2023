SELECT t1.title, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, 
       t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.deathYear, t3.primaryProfession, t3.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryTitle = t3.primaryName
WHERE t1.genres = 'Drama' AND t2.averageRating > 7 AND t3.knownForTitles LIKE '%The Martian%'
GROUP BY t1.title, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, 
         t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.deathYear, t3.primaryProfession, t3.knownForTitles
HAVING COUNT(DISTINCT t3.primaryName) > 1