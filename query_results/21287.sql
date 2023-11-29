SELECT * FROM (
    SELECT * FROM `movielens` WHERE (`rating` >=? AND `watched` = true ORDER BY `rating`) LIMIT 10 OFFSET?)