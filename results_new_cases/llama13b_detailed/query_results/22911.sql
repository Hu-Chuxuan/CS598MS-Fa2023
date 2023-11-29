SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%WALL-E (2008)%'
AND nb.knownForTitles LIKE '%Inside Out (2015)%'
AND nb.knownForTitles LIKE '%Old School (2003)%'
ORDER BY tr.averageRating DESC