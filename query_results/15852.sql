SELECT * FROM title WHERE titleType = "movie" AND (originalTitle LIKE "%deadpool%" OR originalTitle LIKE "%trainwreck%") ORDER BY rating DESC LIMIT 7