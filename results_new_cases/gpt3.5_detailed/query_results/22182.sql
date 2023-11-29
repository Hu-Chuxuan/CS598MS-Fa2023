SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 1990
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt0181689', 'tt0092099', 'tt0110148', 'tt0175880')
ORDER BY tr.averageRating DESC
LIMIT 5