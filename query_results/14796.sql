SELECT * FROM
(SELECT tconst AS titleID, nconst AS actorID, category, job, characters
FROM `title_principals` WHERE (`category`='self') AND (`job` LIKE '%act%'))
LEFT JOIN `title_ratings` ON (`actorID`=`ratingID`) GROUP BY `actorID`, `category`, `job`, `characters`