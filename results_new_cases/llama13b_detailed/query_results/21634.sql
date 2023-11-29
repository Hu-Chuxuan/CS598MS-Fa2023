SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Drama%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Notebook%'
ORDER BY tr.averageRating DESC