SELECT * FROM (
    SELECT tb.*,
        CASE WHEN tc.titleType = "Comedy" THEN 1 ELSE 0 END AS IsComedy
    FROM title_basics as tb LEFT JOIN title_ratings as tr ON tb.primaryTitle=tr.averageRating WHERE ((tb.isAdult IS NULL OR b.isAdult <> 1)) AND (((tb.startYear <= :year) AND (tb.endYear >= :year))) GROUP BY tb.titleType