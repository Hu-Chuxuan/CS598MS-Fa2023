SELECT * FROM (
    SELECT DISTINCT tconst AS titleID, AVG(averageRating) AS avgRatings
       , COUNT(*) AS totalVoteCount
       , SUM(numVotes)/COUNT(*)-1 AS percentOfUsersLikeThisMovie
FROM title_rating WHERE genre = 'action' AND averageRating >= 7 AND averageRating <= 10 GROUP BY tconst ORDER BY avgRatings DESC LIMIT 3 OFFSET 0