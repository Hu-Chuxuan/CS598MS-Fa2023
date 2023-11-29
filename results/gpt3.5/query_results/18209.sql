SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2000
AND tb.genres NOT LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('Les Misérables', 'Dunkirk', 'The Greatest Showman', 'Thor: Ragnarok')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1