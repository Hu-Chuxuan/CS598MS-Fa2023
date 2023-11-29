SELECT t.title_basics, t.title_ratings, t.name_basics, t.title_crew, t.title_principals
FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.nconst = n.nconst
WHERE t.titleType ='movie' AND t.startYear >= 1980 AND t.endYear <= 1989
AND tr.averageRating > 6 AND tr.numVotes > 100
AND n.primaryProfession LIKE '%actor%'
AND n.knownForTitles NOT LIKE '%TV Series%'
ORDER BY tr.averageRating DESC, t.primaryTitle ASC