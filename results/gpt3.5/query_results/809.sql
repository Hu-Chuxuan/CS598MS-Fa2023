SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Anime%' 
AND tb.primaryTitle NOT LIKE '%expansion pack%'
AND tb.startYear >= 1990
AND tb.startYear <= 1995
AND tb.tconst NOT IN ('tt0107692')
ORDER BY tr.averageRating DESC
LIMIT 5