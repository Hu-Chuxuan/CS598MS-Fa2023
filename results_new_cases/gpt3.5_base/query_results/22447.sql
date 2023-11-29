SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Girls Trip', 'Pineapple Express', 'Super Troopers', 'Anchorman: The Legend of Ron Burgundy', 'Uncle Buck', 'Step Brothers', 'Super Troopers', 'Pineapple Express', 'National Lampoon\'s Vacation', 'National Lampoon\'s Christmas Vacation')
GROUP BY tb.primaryTitle
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5