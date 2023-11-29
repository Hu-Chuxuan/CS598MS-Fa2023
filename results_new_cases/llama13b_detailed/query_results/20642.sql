SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Comedy%' AND t.startYear = 2006
AND n.primaryProfession LIKE '%Actor%'
AND n.knownForTitles LIKE '%Black Panther (2018)%'
AND n.knownForTitles LIKE '%Iron Man 2 (2010)%'
AND n.knownForTitles LIKE '%Click (2006)%'
ORDER BY tr.averageRating DESC