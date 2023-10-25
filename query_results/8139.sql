SELECT t.titleId AS id, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, g.* FROM titles AS t INNER JOIN genre AS g ON t.genre = g.id WHERE userInput LIKE '%Big Fish%' OR userInput LIKE '%Pan\'s%'