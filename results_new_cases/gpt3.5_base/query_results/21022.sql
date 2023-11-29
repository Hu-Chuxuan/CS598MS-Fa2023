SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres IN (SELECT genres FROM title_basics WHERE primaryTitle IN ('The Lord of the Rings  (1978)', 'Scarface  (1983)'))
AND tb.primaryTitle NOT IN ('The Lord of the Rings  (1978)', 'Scarface  (1983)')
ORDER BY tr.averageRating DESC
LIMIT 5