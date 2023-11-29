SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Action%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Get Out (2017)%'
AND nb.knownForTitles LIKE '%Click  (2010)%'
ORDER BY tr.averageRating DESC, tb.startYear DESC