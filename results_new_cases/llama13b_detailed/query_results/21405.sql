SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Crime%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Citizen Kane (1941)%'
AND nb.knownForTitles LIKE '%The Wizard of Oz  (1939)%'
AND nb.knownForTitles LIKE '%Psycho  (1960)%'
ORDER BY tr.averageRating DESC, tb.startYear DESC