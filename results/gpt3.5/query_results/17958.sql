SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 2018
AND tb.runtimeMinutes >= 90
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle LIKE '%Feel Pretty%'
AND tb.primaryTitle NOT IN ('Snatched (2017)', 'A Bad Moms Christmas (2017)')
ORDER BY tr.averageRating DESC
LIMIT 5