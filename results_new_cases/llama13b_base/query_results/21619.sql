SELECT t1.title_id, t1.title, t1.originalTitle, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.deathYear, t3.primaryProfession, t3.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_id = t2.title_id
JOIN name_basics t3 ON t2.averageRating > (SELECT AVG(rating) FROM title_ratings WHERE title_id = t1.title_id)
WHERE t1.genres LIKE '%Action%' OR t1.genres LIKE '%Drama%'
AND t2.numVotes > 1000
AND t3.primaryProfession = 'Actor'
AND t3.knownForTitles LIKE '%Pitch Perfect (2012)%'
ORDER BY t2.averageRating DESC