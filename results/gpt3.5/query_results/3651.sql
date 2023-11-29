SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE 'Drama' IN UNNEST(tb.genres)
AND tb.titleType = 'movie'
AND tb.startYear < EXTRACT(YEAR FROM CURRENT_DATE())
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('The Champ', 'Stepmom', 'Old Yeller')
ORDER BY tr.averageRating DESC
LIMIT 5