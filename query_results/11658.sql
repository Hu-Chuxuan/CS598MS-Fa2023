SELECT t.* FROM rating r
INNER JOIN name n ON(r.`category` = n.`job`) AND
                   ((n.`primaryName` LIKE CONCAT('%',r.`primaryProfession`, '%') OR
                    n.`primaryProfession` LIKE CONCAT('%',r.`primaryName`, '%')))