SELECT TOP 5 * FROM title WHERE tconst = "title" AND ((primaryTitle LIKE '%Wedding%') OR (originalTitle LIKE '%Wedding%')) ORDER BY avgrating DESC