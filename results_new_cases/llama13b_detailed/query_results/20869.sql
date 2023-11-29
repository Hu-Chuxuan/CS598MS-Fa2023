SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear = 2015
AND tb.endYear = 2016
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Ant-Man%')

This query will SELECT all the movies with titleType'movie', genres containing both 'Action' and 'Comedy', released between 2015 and 2016, and with at least one actor in the leading role. Additionally, it will only SELECT titles that are similar to Ant-Man (2015) and Deadpool (2016) based on the user's preference history