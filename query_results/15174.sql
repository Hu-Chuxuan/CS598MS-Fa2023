SELECT * FROM (title_basic INNER JOIN cast ON casting = primaryName) WHERE ((startyear >= '1960') AND (endyear <= '1980')) ORDER BY rating DESC LIMIT 2