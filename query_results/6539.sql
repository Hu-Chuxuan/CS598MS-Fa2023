SELECT * FROM 
    `title` JOIN `name` ON (`title`.`primaryName` = `name`.`primaryName`)
JOIN `rating` ON(`title`.`numVotes`=`rating`.`averageRating`)
WHERE ((title_type='movie' OR title_type='shortfilm') AND `genre` IN ('horror'))
AND rating >=.80
ORDER BY `directors`, `writers`