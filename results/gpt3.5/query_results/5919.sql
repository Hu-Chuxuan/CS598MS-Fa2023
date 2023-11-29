SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2015
AND tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT LIKE '%Saw%'
AND tb.primaryTitle NOT IN ('Get Out (2017)', 'It  (2017)', "Don't Breathe (2016)")
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5