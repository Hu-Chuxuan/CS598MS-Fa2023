SELECT * FROM  `title` WHERE  `name_basics`.`primaryProfession` = "Actor" AND (`title_principals`.`job` IN ("Director") OR (`title_principals`.`job` IN ("Writer")))