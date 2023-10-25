SELECT * FROM
    (SELECT ratingAverage AS avg_rating, COUNT(*) as count_voters
        from title_ratings WHERE tconst = "Moana" AND averageRating > 7.8 GROUP BY averageRating HAVING COUNT(DISTINCT averageRating)> 1) AS moa
    UNION ALL SELECT * FROM
    (SELECT ratingAverage AS avg_rating, COUNT(*) as count_voters
        from title_ratings WHERE tconst IN ('Moana','Home')AND averageRating < 9.2 GROUP BY averageRating HAVING COUNT(DISTINCT averageRating)> 1) AS home
ORDER BY avg_rating DESC LIMIT 2