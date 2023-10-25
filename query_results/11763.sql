SELECT * FROM
(select tb.* from title_basic as tb left join rating_basic as rb ON tb.titleId = rb.movieID where tb.isAdult=0 ORDER BY rb.averageRating DESC LIMIT 6)