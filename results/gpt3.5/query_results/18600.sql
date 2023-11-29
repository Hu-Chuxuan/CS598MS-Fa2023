SELECT tb.primaryTitle, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.startYear >= 1990
AND tb.startYear <= 2005
AND tb.primaryTitle NOT IN ('Runaway Jury', 'The Net')
AND tb.primaryTitle <> 'Forrest Gump'
ORDER BY tr.averageRating DESC
LIMIT 5