SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Family%'
AND tb.primaryTitle NOT IN ('Peter Rabbit (2018)', 'Finding Nemo (2003)', 'Finding Dory (2016)')
ORDER BY tr.averageRating DESC
LIMIT 10