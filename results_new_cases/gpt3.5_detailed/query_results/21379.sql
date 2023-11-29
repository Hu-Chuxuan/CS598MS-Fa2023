SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear <= 1960
AND tb.genres LIKE '%Romance%'
AND tb.genres NOT LIKE '%Color%'
AND tb.genres NOT LIKE '%Talk-Show%'
AND tb.genres NOT LIKE '%Reality-TV%'
AND tb.tconst NOT IN ('tt0386423', 'tt2704998')
ORDER BY tr.averageRating DESC
LIMIT 5