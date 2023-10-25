SELECT t.* FROM title_basics AS t JOIN name_basics as n ON t.primaryTitle = n.titleType WHERE t.isAdult=FALSE AND ((t.startYear BETWEEN? AND?)) ORDER BY t.runtimeMinutes DESC LIMIT 3