SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%mystery%' OR tb.genres LIKE '%action%'
AND tb.primaryTitle NOT IN ('Black Panther (2018)', 'Ant-Man and the Wasp (2018)', 'Avengers: Infinity War (2018)', 'Deadpool  (2016)')
ORDER BY tr.averageRating DESC
LIMIT 10