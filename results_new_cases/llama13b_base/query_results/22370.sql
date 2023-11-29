SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE tb.genres = 'Horror'
AND tr.averageRating > 7
AND nb.knownForTitles = 'It'
AND tc.directors = 'Andy Muschietti'
AND tp.category = 'Actor'
AND tp.job = 'Lead'
AND tp.characters = 'Pennywise'

ORDER BY tr.averageRating DESC