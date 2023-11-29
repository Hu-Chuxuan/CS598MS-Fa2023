SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Crime%'
AND tb.startYear < 1996
AND tr.averageRating >= 7.5
AND tb.tconst NOT IN ('tt0369610', 'tt5463162', 'tt0078346', 'tt1825683', 'tt5658306', 'tt4154756')
ORDER BY tr.averageRating DESC
LIMIT 5