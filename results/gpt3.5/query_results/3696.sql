SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.startYear >= 2000
AND tb.genres LIKE '%Adventure%' 
AND tb.genres LIKE '%Family%'
AND tb.tconst NOT IN ('tt0113497', 'tt5638642', 'tt2283362', 'tt0181875')
ORDER BY tr.averageRating DESC
LIMIT 5