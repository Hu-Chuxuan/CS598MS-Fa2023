SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie'
AND t.genres LIKE '%Comedy%'
AND t.startYear <= 2016
AND t.endYear >= 2013
AND tr.averageRating > 6
AND n.primaryProfession LIKE '%Actor%'
AND n.knownForTitles LIKE '%La La Land%'
AND n.knownForTitles LIKE '%The Great Gatsby%'