SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.name, t2.birthYear, t2.primaryProfession, t3.job
FROM title_basics t1
JOIN name_basics t2 ON t1.primaryTitle = t2.title
JOIN title_crew t3 ON t1.directors = t3.director
WHERE t1.genres LIKE '%Drama%' AND t1.startYear >= 1990 AND t1.startYear <= 2010
AND (t2.knownForTitles LIKE '%Sexy%' OR t3.job LIKE '%Director%')
GROUP BY t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.name, t2.birthYear, t2.primaryProfession, t3.job
HAVING COUNT(*) > (SELECT COUNT(*) FROM title_ratings WHERE averageRating > 7 AND numVotes > 1000)