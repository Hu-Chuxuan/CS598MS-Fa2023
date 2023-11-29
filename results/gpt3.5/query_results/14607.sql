SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.startYear = 2016
AND tb.primaryTitle <> 'Miracles from Heaven'
AND tb.primaryTitle <> 'Black Panther'
ORDER BY tr.averageRating DESC
LIMIT 5