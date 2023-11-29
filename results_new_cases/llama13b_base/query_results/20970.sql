SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, 
       t2.averageRating, t2.numVotes, n1.primaryName, n1.birthYear, n1.deathYear, n1.primaryProfession, n1.knownForTitles, 
       c1.category, c1.job, c1.characters
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics n1 ON t1.primaryTitle = n1.primaryName
JOIN title_crew c1 ON t1.tconst = c1.tconst
WHERE t1.genres LIKE '%Action%' AND t1.genres LIKE '%Comedy%' AND t1.genres LIKE '%Marvel%'
AND t2.averageRating > 7 AND t2.numVotes > 10000
AND n1.primaryProfession IN ('Actor', 'Actress')
AND c1.category IN ('Director', 'Writer')
GROUP BY t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, 
       t2.averageRating, t2.numVotes, n1.primaryName, n1.birthYear, n1.deathYear, n1.primaryProfession, n1.knownForTitles, 
       c1.category, c1.job, c1.characters
ORDER BY t2.averageRating DESC, t1.startYear DESC