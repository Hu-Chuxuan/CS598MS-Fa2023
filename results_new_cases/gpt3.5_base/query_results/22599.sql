SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
LEFT JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE nb.primaryName = 'Billy Bob Thornton'
AND tb.primaryTitle NOT LIKE 'Sling Blade%'
AND tb.primaryTitle NOT IN ('In Bruges (2008)', 'Deuce Bigalow: Male Gigolo (1999)')
AND tb.titleType = 'movie'
ORDER BY tr.averageRating DESC