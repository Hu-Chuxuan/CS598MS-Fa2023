SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Comedy%'
AND (tb.primaryTitle LIKE '%Bridesmaids%' OR tb.primaryTitle LIKE '%Superbad%')
AND tb.primaryTitle NOT IN ('Bridesmaids', 'Superbad', 'The War Bride', 'Bride Wars', 'Girls Trip')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5