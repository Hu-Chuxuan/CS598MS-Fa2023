SELECT * FROM
    `titles` AS T WHERE (`isAdult` = 1 AND `startYear` >=? AND `endYear` <=?) OR (`genre` LIKE '%%') ORDER BY avg(`rating`) DESC LIMIT 3