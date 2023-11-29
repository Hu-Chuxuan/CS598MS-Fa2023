SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%'
AND tb.primaryTitle != 'Jason X (2001)'
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5