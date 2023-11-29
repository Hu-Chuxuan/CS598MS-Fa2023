SELECT * FROM
    `title` AS `t`,
        (`name`)AS `name`,
            (`genre`)AS `genre` WHERE
        `startyear` < 1960 AND (`endyear` > 1960 OR (`endyear` IS NULL))AND(`isadult` = true)