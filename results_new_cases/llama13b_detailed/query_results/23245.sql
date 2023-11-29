SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType ='movie'
AND tb.primaryTitle LIKE '%Toy Story%'
AND tb.genres LIKE '%Animation%'
AND tb.startYear >= 1990
AND tb.endYear <= 2010
AND tp.category = 'actor'
AND tr.averageRating > 5
ORDER BY tr.averageRating DESC