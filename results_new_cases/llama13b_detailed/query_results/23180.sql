SELECT * FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Drama%'
AND tb.startYear BETWEEN 2000 AND 2017
AND tb.endYear IS NULL
AND tc.directors = 'nm0085156' -- M. Night Shyamalan
AND tp.category = 'director'
AND nb.primaryName = 'M. Night Shyamalan'
AND NOT EXISTS (
  SELECT 1 FROM title_ratings tr
  WHERE tb.tconst = tr.tconst
  AND tr.averageRating > 7
)
ORDER BY tb.startYear DESC, tp.job ASC