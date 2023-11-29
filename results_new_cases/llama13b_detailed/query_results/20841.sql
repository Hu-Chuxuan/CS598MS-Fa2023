SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryName = n.primaryName
WHERE t.genres LIKE '%Comedy%' AND t.isAdult = 0
AND n.knownForTitles LIKE '%Beetlejuice (1988)%' OR n.knownForTitles LIKE '%Ghostbusters (1984)%'
ORDER BY tr.averageRating DESC, t.startYear DESC