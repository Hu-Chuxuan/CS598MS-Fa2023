SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles NOT LIKE '%Dogma%'
AND nb.knownForTitles NOT LIKE '%Frida%'
AND nb.knownForTitles NOT LIKE '%How to Be a Latin Lover%'
ORDER BY tr.averageRating DESC