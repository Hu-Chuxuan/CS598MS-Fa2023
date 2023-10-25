SELECT t.* FROM titles AS t INNER JOIN ratings ON rating.title = t.id WHERE genre IS NOT NULL AND ((startyear <= 1980 OR startyear >= 2000)) AND ((endyear > 1980 OR endyear < 2000))