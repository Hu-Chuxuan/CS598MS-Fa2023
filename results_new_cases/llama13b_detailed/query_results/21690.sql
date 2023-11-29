SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tr.averageRating > 6
AND EXISTS (
  SELECT 1 FROM title_principals tp
  WHERE tp.nconst = nb.nconst
  AND tp.category = 'actor'
)
AND tb.originalTitle NOT LIKE '%Animation%'
AND tb.originalTitle NOT LIKE '%Documentary%'
AND tb.primaryTitle NOT LIKE '%Animation%'
AND tb.primaryTitle NOT LIKE '%Documentary%'
AND tb.isAdult = 0
AND tb.startYear = 2000
AND tb.endYear = 2000
AND tb.runtimeMinutes > 120
AND tb.genres LIKE '%Science Fiction%'

This SQL query will retrieve all movies that have a high rating (above 6), are not animations or documentaries, have at least one actor in the principal staff, and were released in the year 2000. The query will also filter out titles that are adult-oriented or have a runtime of less than 2 hours. Finally, the query will only return titles that have the word "Science Fiction" in their genres