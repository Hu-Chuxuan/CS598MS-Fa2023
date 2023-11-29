SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Horror%')
AND tb.startYear > 1990
AND tb.startYear < 2010
AND tb.tconst NOT IN ('tt2184339', 'tt0137523', 'tt0468569', 'tt0110632')