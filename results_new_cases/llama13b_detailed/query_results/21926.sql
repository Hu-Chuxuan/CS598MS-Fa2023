SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Wells Fargo%'
AND nb.knownForTitles LIKE '%Pulp Fiction%'
AND nb.knownForTitles LIKE '%Sin City%'
ORDER BY tr.averageRating DESC, nb.primaryName ASC
LIMIT 5