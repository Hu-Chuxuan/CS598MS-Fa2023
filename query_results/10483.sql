SELECT * FROM title_basics WHERE title_type = "movie" AND ((startyear >= 1970 OR endyear <= 2020)) AND (genre IN ('Action','Drama')) ORDER BY rating DESC LIMIT 6