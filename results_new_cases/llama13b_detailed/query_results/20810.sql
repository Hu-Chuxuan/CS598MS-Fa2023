SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror%' AND tb.genres LIKE '%Thriller%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Winchester (2018)%' OR nb.knownForTitles LIKE '%The Exorcist  (1973)%' OR nb.knownForTitles LIKE '%It Follows (2014)%' OR nb.knownForTitles LIKE '%Friday the 13th  (1980)%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC