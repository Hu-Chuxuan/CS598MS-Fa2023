SELECT * FROM (
    SELECT tb.*, tr.*, nr.*, tc.*, np.*, c.*
    from title_basic as tb
        INNER JOIN title_rating as tr ON tb.titleID = tr.movieID
        LEFT OUTER JOIN name_basic as nb USING(primaryName)
            WHERE nb.isAdult=false AND nb.deathYear IS NULL
                ORDER BY tr.averageRating DESC LIMIT 1