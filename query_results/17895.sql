SELECT * FROM
( SELECT * FROM title_ratings WHERE tconst = 'The Shawshank Redemption' ) AS T1 JOIN
( SELECT * FROM title_reviews WHERE rtype='positive' AND rating >= 7 OR rating <= 8 AND numVotes>=1000 ORDER BY rating DESC LIMIT 20 )AS R ON T1.titleID=R.movieID