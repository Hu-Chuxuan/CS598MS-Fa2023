SELECT t.* FROM title AS t WHERE t.isAdult = 1 AND t.startYear > 1985 AND t.endYear < 2015 ORDER BY avgRATING DESC LIMIT 10 OFFSET 15