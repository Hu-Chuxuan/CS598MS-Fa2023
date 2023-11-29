SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.primaryName, t2.birthYear, t2.knownForTitles
FROM title_basics t1
JOIN name_basics t2 ON t1.primaryTitle = t2.primaryName
WHERE t1.isAdult = 0
AND t1.genres LIKE '%adventure%'
AND t1.startYear > 2000
AND t1.runtimeMinutes < 120
AND t2.knownForTitles LIKE '%Wonder Woman%'
OR t2.knownForTitles LIKE '%Sky High%'
OR t2.knownForTitles LIKE '%The Hunger Games%'
OR t2.knownForTitles LIKE '%The Hunger Games: Catching Fire%'
GROUP BY t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.primaryName, t2.birthYear, t2.knownForTitles
ORDER BY t1.startYear DESC, t1.runtimeMinutes ASC