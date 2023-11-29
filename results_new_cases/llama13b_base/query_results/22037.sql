SELECT t1.title, t1.primaryTitle, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes, t3.name, t3.birthYear, t3.deathYear, t3.primaryProfession, t3.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryName = t3.nconst
WHERE t1.genres LIKE '%Apocalyptic%' OR t1.genres LIKE '%Post-Apocalyptic%'
AND t2.averageRating > (SELECT AVG(t4.averageRating) FROM title_ratings t4 WHERE t4.tconst IN (SELECT t5.tconst FROM title_ratings t5 WHERE t5.averageRating > 7 AND t5.numVotes > 1000))
AND t3.knownForTitles NOT IN (SELECT nconst FROM name_basics WHERE birthYear < 1980)
ORDER BY t2.averageRating DESC, t1.startYear DESC