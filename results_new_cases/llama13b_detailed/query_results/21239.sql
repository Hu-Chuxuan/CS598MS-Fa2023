SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Horror%' AND t.startYear <= 2004 AND t.endYear >= 2004
AND n.primaryProfession LIKE '%Actor%' AND n.knownForTitles LIKE '%The Shawshank Redemption (1994)%'
AND n.knownForTitles LIKE '%Mr. Holland%s Opus (1995)%'
ORDER BY t.averageRating DESC