SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear = 2016
AND tb.titleType = 'movie'
AND tb.tconst NOT IN ('tt4975722', 'tt2543164')  -- Exclude Moonlight and Arrival
AND tb.tconst != 'tt4034228'  -- Exclude Manchester by the Sea
AND tb.genres LIKE '%Drama%'  -- Recommend dramas
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5