SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE genres LIKE '%Comedy%' OR genres LIKE '%Action%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt3783958', 'tt5439796')
ORDER BY tr.averageRating DESC
LIMIT 10