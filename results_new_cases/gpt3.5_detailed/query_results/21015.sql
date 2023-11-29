SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND 'Comedy' = ANY(tb.genres)
AND tb.primaryTitle NOT IN ('The Texas Chain Saw Massacre (1974)', 'Black Panther (2018)', 'Wish Upon (2017)')
ORDER BY tr.averageRating DESC
LIMIT 5