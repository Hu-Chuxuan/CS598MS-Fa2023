SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.titleType = 'feature film'
AND tb.originalTitle = 'Kiss the Girls'
AND tr.averageRating > 6
AND nb.birthYear = 1970
AND tc.directors = 'Adam Sandler'
AND tp.category = 'actor'
AND tp.job = 'lead'
AND tp.characters LIKE '%comedy%'

ORDER BY tr.averageRating DESC, tp.job ASC