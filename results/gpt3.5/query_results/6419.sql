SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Romance%'
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Love Actually (2003)', 'Sweet Home Alabama  (2002)', 'Notting Hill ')
ORDER BY tr.averageRating DESC
LIMIT 5