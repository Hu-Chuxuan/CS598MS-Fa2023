SELECT * FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_principals p ON t.tconst = p.tconst
JOIN title_ratings r ON t.tconst = r.tconst
WHERE t.titleType ='movie' AND t.isAdult = 0 AND t.genres LIKE '%Family%'
AND n.primaryProfession LIKE '%Actor%' AND n.knownForTitles LIKE '%Titanic%'
AND p.category LIKE '%Actor%' AND p.job LIKE '%Lead%'
AND r.averageRating > 6 AND r.numVotes > 1000
ORDER BY r.averageRating DESC