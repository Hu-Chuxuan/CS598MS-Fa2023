SELECT * FROM (
    SELECT tconst AS "title",
           avg(averageRating)/numvotes as rating,
           COUNT(*) AS voteCount
      from title_rating
     WHERE tconst IN ('Rent   ', 'Chicago  ')
GROUP BY tconst