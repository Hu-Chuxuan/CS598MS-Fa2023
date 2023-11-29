SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.directors = tc.directors
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.genres = 'comedy'
AND tr.averageRating > 7
AND nb.birthYear BETWEEN 1960 AND 1980
AND tc.directors LIKE '%Kevin Smith%'
AND tp.category = 'actor'
AND tp.job = 'lead'
AND tp.characters LIKE '%Silent Bob%'

