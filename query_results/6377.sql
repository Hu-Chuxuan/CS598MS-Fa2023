SELECT DISTINCT
    p.*
FROM `movielens` AS ml
INNER JOIN `titleratings` AS tr ON ml.`tmdbid` = tr.`tmdbid` AND ml.`userid`=tr.`userid`
LEFT OUTER JOIN `users` AS u ON tr.`userid` = u.`userId`
WHERE u.`username` LIKE '%john%' OR u.`email` LIKE '%john%@gmail.com%' OR u.`gender`='male' AND
u.`ageGroup` >= '18' AND u.`lastSeenMoviedb` IS NULL AND
((u.`ratingGiven` > 0) AND ((u.`watchlistStatus` <> 'added') OR (u.`watchlistStatus` IS NOT NULL)))
AND EXISTS ( SELECT * FROM `genre` WHERE genre.`tmdbid` IN ('92','12'))
GROUP BY ml.`tmdbid`,ml.`titleType`,ml.`primaryTitle`,ml.`originalTitle`,ml.`isAdult`,ml.`startYear`,ml.`endYear`,ml.`runtimeMinutes`,ml.`genres`,ml.`titleCreator`,ml.`yearReleased`,ml.`country`,ml.`language`,ml.`mpaaRating`,ml.`audienceScore`,ml.`tagline`,ml.`overview`,ml.`posterPath`,ml.`backdropPath` )
ORDER BY COUNT(*) DESC LIMIT 15 OFFSET 0 