SELECT * FROM title WHERE (titleType = "Movie") AND (genre IN ('Comedy') OR genre IN ('Drama')) ORDER BY rating DESC LIMIT 1