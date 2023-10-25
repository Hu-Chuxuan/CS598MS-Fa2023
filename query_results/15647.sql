SELECT * FROM
    (select tb.* from title_basic as tb join
        title_rating as tr ON tr.titleID = tb.id where tr.averageRating >.9 AND tb.isAdult!= true limit 1)