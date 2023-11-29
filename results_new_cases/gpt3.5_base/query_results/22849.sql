SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN ('tt1334260')  -- Exclude 'Never Let Me Go'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1