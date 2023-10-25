SELECT * FROM
(title_principals as tp INNER JOIN casts AS c ON c.id = tp.castId WHERE tp.job LIKE '%actor%' AND c.character LIKE '%John Belushi%')
INNER JOIN actors AS actor ON actor.id=tp.castId