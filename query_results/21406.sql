SELECT * FROM (
    SELECT tb.*, nr.*, tc.*, tp.*, tc.* AS TOTALS
       , ROW_NUMBER() OVER(PARTITION BY userid ORDER BY rating DESC) rnk
    FROM title_basics tb
            INNER JOIN title_ratings tr ON tb.titleID = tr.titleID AND tr.userID = @userId
            LEFT OUTER JOIN names n ON n.nameID = tb.primaryName
                                AND n.category IN ('Actor')
            INNER JOIN titles_crews tc ON tc.filmID = tb.movieID
            INNER JOIN titles_principalsp tp ON tp.filmID = tb.movieID
            INNER JOIN ratingsnr NR ON NR.ratingID = tr.averageRating AND NR.userID=@userId
   WHERE tb.isadult='false' OR tb.startyear<1876
   GROUP BY tb.titleID,tr.userID,tb.primaryTitle,n.ordering,tp.job,tc.director,tc.writer