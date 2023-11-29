SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2017
AND tb.genres LIKE '%Romance%'
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('Jumanji (2017)', 'Baywatch (2017)', 'Rampage (2018)')
ORDER BY tr.averageRating DESC
LIMIT 5