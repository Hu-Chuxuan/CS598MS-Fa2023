SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
  OR tb.genres LIKE '%Comedy%' 
  OR tb.genres LIKE '%Click Flicks%'
  AND tb.tconst NOT IN ('tt5463162')