SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear < 1993
AND tb.genres LIKE '%Animation%'
AND tb.tconst NOT IN ('tt0114709', 'tt0120338', 'tt0109830', 'tt0101594', 'tt0089218')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5