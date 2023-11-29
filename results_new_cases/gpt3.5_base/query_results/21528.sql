SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear >= 1990
AND tb.startYear <= 2022
AND tb.primaryTitle NOT IN ('The Lion King (1994)', 'Beauty and the Beast  (1992)', 'Pocahontas  (1995)')
ORDER BY tr.averageRating DESC
LIMIT 10