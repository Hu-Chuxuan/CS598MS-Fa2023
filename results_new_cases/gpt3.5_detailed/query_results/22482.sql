SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear > 2000
AND tb.primaryTitle NOT IN ('The Incredibles (2004)', 'Super Troopers (2001)', 'Pineapple Express (2008)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5