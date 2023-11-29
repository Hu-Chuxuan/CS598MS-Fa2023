SELECT * FROM (
    SELECT t.*, r.numVotes AS totalReviews, r.averageRating AS avgScore
        FROM title_basic b JOIN title_rating r ON b.titleID = r.titleID
            WHERE ((b.isAdult = false)) AND NOT EXISTS (SELECT * from title_crew c where b.titleID=c.titleID)
                UNION ALL
             SELECT t.*,r.totalReviewCount AS totalReviews,r.avgScore AS avgScore
                     FROM title_basic b JOIN title_principal p ON b.titleID = p.titleID JOIN title_crew c ON p.ordering = c.ordering JOIN title_rating r ON p.job = r.category ORDER BY b.startYear DESC LIMIT 10 OFFSET 10)