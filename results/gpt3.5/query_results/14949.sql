SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' AND tb.genres NOT LIKE '%Fight%' AND tb.genres NOT LIKE '%War%'
AND tb.originalTitle LIKE '%video game%'
AND tr.averageRating > 7
AND tb.tconst NOT IN ('tt1731141')