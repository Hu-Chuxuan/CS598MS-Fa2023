SELECT t.* FROM title AS t WHERE CONCAT(titleType,' ',originalTitle,' ',startYear,' - ',endYear,' ',runtimeMinutes) LIKE '%' || :input || '%'