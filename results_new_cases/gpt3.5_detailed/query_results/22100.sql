SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('Blair Witch  (2016)', 'The Blair Witch Project (1999)', 'V/H/S')
ORDER BY tr.averageRating DESC
LIMIT 5