SELECT * FROM tconst WHERE tconst IN ('tt0000001','tt0000002') AND (((startYear BETWEEN \'\N\' AND \''2015\')) OR ((endYear <= \'\N\'))) GROUP BY tconst ORDER BY averageRating DESC LIMIT 2 OFFSET 0 ROWS FILTER (WHERE rating >= 7)