SELECT * FROM
title_principals WHERE ((category = "actress" AND job LIKE "%comedy%" OR category="actor"AND job like "%comedy%")
OR category= "director" AND job LIKE "%animated%" ) GROUP BY category ORDER BY rating DESC LIMIT 6