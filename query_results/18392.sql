SELECT * FROM `title_basics` WHERE `isAdult = true` AND (`primaryTitle LIKE '%dumb%'` OR `originalTitle LIKE '%dumb%')` ORDER BY `startYear DESC`, `endYear ASC`