SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND tb.startYear > 2010
AND tr.averageRating > 7.5
AND tb.primaryTitle NOT IN ('The Road to El Dorado', 'Despicable Me')
ORDER BY tr.averageRating DESC
LIMIT 5