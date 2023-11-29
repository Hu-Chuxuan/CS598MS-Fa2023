SELECT * FROM
    ( SELECT tconst AS TitleID,
        SUM((rating > 5 AND rating < 7)) AS GoodMovieCount,
        AVG(rating) AS RatingAverage,
         SUM(CASE WHEN rating = 5 THEN 1 ELSE 0 END)/SUM(CASE WHEN rating >= 5 THEN 1 ELSE 0 END)*100 As PercentageOfGoodMovies,
         COUNT(*) AS TotalMoviesViewed
     FROM title_ratings WHERE tconst IN ('tt0000001','tt0000002') GROUP BY tconst ) AS MoviesToWatch INNER JOIN
    ( SELECT DISTINCT nconst AS NameID, category AS JobCategory, COUNT(*) AS MovieCount
      FROM title_principals GROUP BY nconst,category ) AS People ON (People.JobCategory='Self' OR People.JobCategory IS NULL) AND (MoviesToWatch.TotalMoviesViewed>=2 && MoviesToWatch.PercentageOfGoodMovies>0.9) ORDER BY MoviesToWatch.Performance DESC LIMIT 3 OFFSET 0 