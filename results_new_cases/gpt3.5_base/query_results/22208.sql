SELECT tb.primaryTitle 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Family%' 
AND tr.averageRating >= 7 
AND (tb.primaryTitle NOT IN ('Angels & Demons  (2009)', 'National Treasure  (2004)')) 
ORDER BY tr.averageRating DESC, tr.numVotes DESC 
LIMIT 1