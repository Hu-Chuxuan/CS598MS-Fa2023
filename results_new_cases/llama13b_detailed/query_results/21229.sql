SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Romance%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%The Avengers (2012)%'
ORDER BY tr.averageRating DESC