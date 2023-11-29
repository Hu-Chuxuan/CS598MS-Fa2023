SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryName = n.primaryName
WHERE t.genres LIKE '%Horror%' AND t.startYear <= 2000 AND t.endYear >= 1970
AND n.knownForTitles LIKE '%Halloween%' OR n.knownForTitles LIKE '%Scream%'
ORDER BY tr.averageRating DESC, t.primaryTitle ASC