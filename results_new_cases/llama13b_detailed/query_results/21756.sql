SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Comic Book%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%The Last of the Mohicans%'
AND nb.knownForTitles LIKE '%A River Runs Through It%'
ORDER BY tr.averageRating DESC