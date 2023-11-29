SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Action%' AND tb.genres LIKE '%Comedy%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Black Panther (2018)%'
AND nb.knownForTitles LIKE '%Jumanji (2017)%'
AND nb.knownForTitles NOT LIKE '%Train Ride (2005)%'
ORDER BY tr.averageRating DESC, nb.primaryName ASC