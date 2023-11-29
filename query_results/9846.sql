SELECT * FROM ( SELECT DISTINCT tconst AS TITLEID, 
                                avg(averageRating), COUNT(*) AS VOTES, 
                                SUM((rating = 1 AND tconst IN ('[Interstellar](2014)'))) AS RATINGS,  
                               STDEV(avg(averageRating)) OVER () AS SCORE  )
WHERE ((AVG(averageRating) >= 5 OR AVG(averageRating) <= 5) AND (AVG(numVotes) > 0) AND (SUM((rating=1))>0))