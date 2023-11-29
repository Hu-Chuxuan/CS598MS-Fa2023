SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.genres LIKE '%Crime%'
AND tb.startYear > 1994
AND tb.startYear < 2011
AND tb.tconst NOT IN ('tt0110912', 'tt0114369', 'tt5029638')
ORDER BY tr.averageRating DESC
LIMIT 5