SELECT * FROM
(
    SELECT rating AS rtg,title_name.primaryTitle AS ttnm
       ,title_genre.genres AS gnsr
     FROM
         title_rating JOIN title_basic ON title_rating.movieId = title_basic.id
                               AND title_rating.year >= yearFrom
                LEFT OUTER JOIN title_name ON title_name.movieId= title_basic.id
            RIGHT OUTER JOIN title_genre ON title_genre.movieId = title_basic.id
                              WHERE title_basic.isAdult IS NULL OR title_basic.isAdult IN ('false','true')
                      GROUP BY tbnm, ttnm, gnsr