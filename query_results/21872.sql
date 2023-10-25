SELECT * FROM
( SELECT tb.*, nb.*, tc.*, pc.*, tp.* WHERE tb.titleType = "movie" AND nb.primaryName IN ("Jonah Hill", "Michael Cera") OR tc.category LIKE "%comedy%" OR pc.job LIKE "%actor%" OR tp.characters IN("Seth", "Evan") ) AS mr
WHERE (tb.startYear >= 1980 AND tb.endYear <= 2015 AND tb.isAdult IS NOT NULL AND tb.runtimeMinutes > 60 MINUTES)
AND ((nb.primaryName =? OR nb.ordering =?))
AND ((tc.category =? OR tc.category LIKE %?% OR tc.category LIKE %?%))
AND ((pc.job=? OR pc.job LIKE %?%))
AND ((tp.characters=? OR tp.characters LIKE %?%))
ORDER BY tb.averageRating DESC LIMIT 3