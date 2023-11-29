SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Action%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Black Panther (2018)%'
AND nb.knownForTitles LIKE '%Michael Clayton (2007)%'
AND nb.knownForTitles LIKE '%Star Trek (2009)%'
ORDER BY tr.averageRating DESC