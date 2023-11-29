SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.startYear = 2016 OR tb.startYear = 2017)
AND tb.genres LIKE '%Horror%'
OR tb.genres LIKE '%Thriller%'
AND tb.primaryTitle NOT IN ('Zodiac', 'Murder on the Orient Express')
ORDER BY tr.averageRating DESC
LIMIT 10