SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Drama%'
AND tb.genres LIKE '%Thriller%'
AND tb.genres LIKE '%Horror%'
AND tb.genres LIKE '%Fantasy%'
AND tb.primaryTitle NOT IN ('It  (2017)', 'Sweeney Todd: The Demon Barber of Fleet Street  (2007)', 'Mama  (2013)')
ORDER BY tr.averageRating DESC
LIMIT 1