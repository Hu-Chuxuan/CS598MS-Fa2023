SELECT * FROM `title_basic` WHERE ((primaryTitle LIKE '%horror%' OR primaryTitle LIKE '%scary%') AND (startYear >= '2016')) ORDER BY rating DESC LIMIT 1