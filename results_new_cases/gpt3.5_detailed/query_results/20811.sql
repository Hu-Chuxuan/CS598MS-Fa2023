SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.genres LIKE '%Thriller%'
AND tb.startYear >= 1988
AND tb.startYear <= 2014
AND tb.tconst NOT IN ('tt0095444', 'tt3235888')