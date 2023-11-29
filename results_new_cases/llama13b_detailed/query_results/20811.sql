SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror' AND tb.runtimeMinutes < 120
AND nb.primaryProfession LIKE '%Actor'
AND nb.knownForTitles LIKE '%Killer Clowns from Outer Space (1988)%'
AND nb.knownForTitles LIKE '%It Follows (2014)%'
ORDER BY tr.averageRating DESC