SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle NOT IN ('Hellraiser (1987)', 'Dawn of the Dead  (2004)')
AND genres IN (SELECT genres FROM title_basics WHERE primaryTitle IN ('Hellraiser (1987)', 'Dawn of the Dead  (2004)'))
ORDER BY averageRating DESC
LIMIT 5