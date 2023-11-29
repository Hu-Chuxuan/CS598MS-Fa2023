SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.name, t2.birthYear, t2.knownForTitles
FROM title_basics t1
JOIN name_basics t2 ON t1.primaryTitle = t2.title
WHERE t1.genres NOT IN ('horror')
AND t2.knownForTitles LIKE '%Avengers:%'
ORDER BY t1.startYear DESC, t2.knownForTitles ASC
LIMIT 5