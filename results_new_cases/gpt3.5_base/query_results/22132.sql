SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.isAdult = 0
AND tb.startYear <= 2000
AND tb.genres LIKE '%Thriller%'
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('A Low Down Dirty Shame (1994)', 'The Martian  (2015)', 'The Usual Suspects (1995)', 'Choke  (2008)')
ORDER BY tr.averageRating DESC
LIMIT 5