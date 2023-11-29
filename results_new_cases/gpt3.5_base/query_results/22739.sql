SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('What About Bob%3F (1991)', 'Baby Mama  (2008)', 'Bridesmaids  (2011)', 'Stripes  (1981)', 'Caddyshack (1980)')
ORDER BY tr.averageRating DESC
LIMIT 10