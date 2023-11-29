SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryTitle = n.primaryName
WHERE t.genres LIKE '%Comedy%'
AND tr.averageRating > 7
AND n.knownForTitles LIKE '%Married to the Mob (1988)%'
AND n.knownForTitles LIKE '%Goodfellas (1990)%'
AND n.knownForTitles LIKE '%My Cousin Vinny (1992)%'
ORDER BY tr.averageRating DESC