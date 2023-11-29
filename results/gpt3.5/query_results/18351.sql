SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres IS NOT NULL
AND tb.genres != ''
AND tb.startYear <= 1997
AND tb.tconst NOT IN ('tt0114938', 'tt0375912', 'tt0111161', 'tt0118541', 'tt0120689', 'tt0099785')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5