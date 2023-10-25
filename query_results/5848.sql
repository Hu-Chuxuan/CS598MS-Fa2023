SELECT * FROM (
    SELECT tc.*, rr.*
       , CASE WHEN ra.rating >= 7 THEN 'Great' ELSE NULL END as rating
       , COUNT(DISTINCT rv.userID) AS voteCounts
      FROM ((title_basic tb INNER JOIN title_recommendation tr ON tb.id = tr.movieID)
            LEFT OUTER JOIN user_vote uv ON tr.movieID = uv.movieID AND uv.userId IN (SELECT DISTINCT userID from table_user))
     RIGHT OUTER JOIN recommended_list rl ON rl.titleRecommendedID = tr.movieId
       LEFT OUTER JOIN ratings_aggregator ra ON ra.averageRating = rl.averageRating
         LEFT OUTER JOIN title_review tr ON tr.titleID=ra.titleID
          LEFT OUTER JOIN review_vote rv ON rv.reviewID=tr.reviewID AND rv.userId='USERNAME'
           WHERE tb.isAdult <> TRUE OR EXISTS(SELECT * FROM title_basic where id in (select distinct parentMovieId from title_parent_child where childMovieId=tb.id)))
    GROUP BY tc.primaryTitle, rr.ordering