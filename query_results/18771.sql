SELECT * FROM 
(SELECT tb.*, count(*) AS totalCounts FROM title_basic as tb WHERE tb.titleType = "movie" AND tb.isAdult!= 'true') AS tc 
WHERE tc.totalCount > 0 ORDER BY rating DESC LIMIT 3