SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear < 1980
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle != 'Black Panther (2018)'
AND tb.primaryTitle != 'Justice League  (2017)'
AND tb.primaryTitle != 'Batman '
ORDER BY tr.averageRating DESC
LIMIT 5