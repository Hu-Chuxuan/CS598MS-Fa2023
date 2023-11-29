SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%'
AND tb.primaryTitle NOT IN ('Black Panther (2018)', 'Jurassic Park', 'Raiders of the Lost Ark (1981)')
ORDER BY tr.averageRating DESC
LIMIT 10