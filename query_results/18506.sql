SELECT * FROM t_recommend WHERE 
((((rating >= 8 AND genre = 'comedy') OR ((genre <> '')) AND (job IN ('actor','director')))) OR 
((((rating > 8 AND genre = 'romantic comedy') OR ((genre <> '') AND (job IN ('actor','director'))))) OR 
((((rating < 8 AND genre = 'drama') OR ((genre <> '') AND (job IN ('director','actor')))))))