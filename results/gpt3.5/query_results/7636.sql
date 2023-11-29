SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2017
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tr.averageRating >= 7
AND tr.numVotes >= 1000
AND tb.primaryTitle NOT IN ('Justice League (2017)', 'Thor: Ragnarok (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5