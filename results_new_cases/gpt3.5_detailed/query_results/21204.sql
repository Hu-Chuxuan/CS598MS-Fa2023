SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%'
AND tb.startYear >= 2012
AND tb.tconst NOT IN ('tt1825683', 'tt1951264', 'tt3896198', 'tt2250912', 'tt1477834', 'tt1375666')
ORDER BY tr.averageRating DESC
LIMIT 10