SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie'
AND t.primaryTitle LIKE '%The Purge%'
AND n.primaryName NOT IN (SELECT n.primaryName FROM name_basics WHERE n.knownForTitles LIKE '%Resident Evil%')
AND n.primaryName NOT IN (SELECT n.primaryName FROM name_basics WHERE n.knownForTitles LIKE '%Taken%')
AND n.primaryName NOT IN (SELECT n.primaryName FROM name_basics WHERE n.knownForTitles LIKE '%The President%')
ORDER BY t.startYear DESC, t.runtimeMinutes DESC, tr.averageRating DESC
LIMIT 5