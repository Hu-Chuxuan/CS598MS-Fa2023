SELECT * FROM `title` WHERE `primaryTitle` LIKE '%Sea%' OR `originalTitle` LIKE '%Sea%'`
OR (`genre` LIKE '%Disaster%' AND `startYear >= 1990')
AND NOT EXISTS(`genre` LIKE '%Science Fiction%' AND `endYear <= 2000')