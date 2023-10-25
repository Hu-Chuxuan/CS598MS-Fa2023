SELECT title.titleId AS ID FROM `title` WHERE `genre` LIKE '%Comedy%' AND (`startYear` BETWEEN '1900-01-01' AND '1979-12-31') ORDER BY `numVotes` DESC LIMIT 1