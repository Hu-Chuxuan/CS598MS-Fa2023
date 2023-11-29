SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType ='movie'
AND tb.startYear = 1994
AND tb.genres LIKE '%Drama%'
AND nb.primaryProfession LIKE '%Actor%'
AND tc.directors LIKE '%Frank_Darabont%'
AND tp.category LIKE '%Actor%'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC