SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND (tb.genres LIKE '%War%' OR tb.primaryTitle IN ('Dunkirk', 'Saving Private Ryan'))
AND tb.startYear >= 1990
AND tb.tconst NOT IN ('tt0081505', 'tt0056869', 'tt0454841', 'tt1323799', 'tt0480249')
ORDER BY tr.averageRating DESC