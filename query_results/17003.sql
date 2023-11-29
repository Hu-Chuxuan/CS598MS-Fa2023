SELECT * FROM
    ((SELECT DISTINCT
            tconst AS TitleID,
            avg(averageRating) AS RatingScore,
            count(*) AS VoteCount,
            numvotes AS UserVoted,
            0 AS NotWatched,
             1 AS Watched
        from title_ratings WHERE numVotes > 0 GROUP BY titleid)) AS T1 INNER JOIN
     (SELECT distinct tconst AS MovieID, title_type, title_basic.primaryTitle, title_rating.avgRating, title_principal.category, title_prinicpal.job, title_princilpal.characters, title_basic.startyear, title_basic.endyear, title_basic.runtimeMinutes, title_basic.genre, title_crews.writers, title_crews.directors group by title_principle.title_id order by ratingscore desc LIMIT 10) AS T2 ON T1.MovieID = T2.MovieID AND NOT WATCHED = 1 ORDER BY RATINGSCORE DESC LIMIT 10 OFFSET $OFFSET$ 