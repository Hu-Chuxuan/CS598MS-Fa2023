SELECT * FROM
    SELECT DISTINCT tconst AS titleID, avg(averageRating), COUNT(*) cnt 
FROM title_ratings WHERE titleType ='movie' AND numVotes > 1 GROUP BY tconst ORDER BY cnt DESC LIMIT 1 OFFSET?
UNION ALL
SELECT titleID, titleType, CONCAT('<a href="',titleURL,'">',titleName,'</a>') AS TitleLink, CONCAT('<img src="',posterImageUrl,'" width=100 height=150 /> ') As PosterImage
FROM title_basic LEFT JOIN poster ON titleID = id JOIN img ON imageID = id
WHERE titleType ='movie' AND numVotes >= 10 OR titleType IN ('tvshow','episode') AND numVotes <= 10
GROUP BY titleID, titleType HAVING COUNT(*)>=10 ORDER BY cnt DESC LIMIT 10 OFFSET?
ORDER BY cnt DESC LIMIT 5 OFFSET?