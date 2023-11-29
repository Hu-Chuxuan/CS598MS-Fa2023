SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Science Fiction'
AND n.primaryProfession LIKE '%Actor'
AND n.knownForTitles LIKE '%Safe House%'
AND n.knownForTitles LIKE '%Deadpool%'
AND n.knownForTitles LIKE '%Inception%'
AND n.knownForTitles NOT LIKE '%Natural Born Killers%'
ORDER BY tr.averageRating DESC