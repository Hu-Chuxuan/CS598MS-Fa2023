SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%found footage%'
AND startYear > 2016
AND primaryTitle NOT IN ('The Thing  (1982)', 'The Thing  (2011)', 'Elf  (2003)', "National Lampoon\'s Christmas Vacation (1989)")
ORDER BY averageRating DESC
LIMIT 5