SELECT * FROM
(SELECT tb.*,(SELECT COUNT(*) AS cnt FROM tc WHERE tc.primaryTitle=tb.title AND tc.numVotes>0) AS voteCounts
FROM title_basic as tb LEFT JOIN title_rating ON tb.title=title_rating.title
WHERE tb.isAdult='false')
WHERE tb.genre IN ('Comedy','Fantasy', 'Family')