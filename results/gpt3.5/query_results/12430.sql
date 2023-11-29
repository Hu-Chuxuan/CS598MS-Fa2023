SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%' OR tb.genres LIKE '%Thriller%'
AND tb.startYear >= 2000
AND tb.startYear <= 2010
AND tb.tconst NOT IN ('tt0382625')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5