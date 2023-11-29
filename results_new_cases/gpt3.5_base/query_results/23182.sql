SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Thriller%'
AND tb.primaryTitle NOT IN ('Natural Born Killers', 'Fight Club', 'Gone Girl')
ORDER BY tr.averageRating DESC
LIMIT 5