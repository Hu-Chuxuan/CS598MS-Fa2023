SELECT t.* FROM titles AS t WHERE t.genre = "Historical" AND t.primaryProfession LIKE '%Actress%' OR t.primaryProfession LIKE '%Actor%'