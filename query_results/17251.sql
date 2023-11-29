SELECT * FROM
    ((SELECT * from `title` where `startyear` between 1980 AND 1989 ) UNION ALL  
     SELECT * from (`title_basics`) WHERE (`primaryTitle` LIKE '%Castaway%' OR `originalTitle` LIKE %'Castaway%') GROUP BY `title_id` ORDER BY RAND() LIMIT 5)