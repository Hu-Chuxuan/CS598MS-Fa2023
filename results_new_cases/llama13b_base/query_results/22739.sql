SELECT * FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
JOIN name_basics nb ON tb.primaryName = nb.primaryName 
JOIN title_crew tc ON tb.directors = tc.directors 
JOIN title_principals tp ON tb.ordering = tp.ordering 
WHERE tb.genres LIKE '%Science Fiction' AND tp.category = 'Actor' AND tp.job = 'Lead' AND tp.characters LIKE '%alien' 
ORDER BY tr.averageRating DESC, tb.startYear DESC