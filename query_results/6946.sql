SELECT * FROM tconst WHERE tconst IN ('title_basic','name_basic') AND ((titleType='movie' OR titleType IS NULL)) AND (((primaryTitle LIKE '%family%' OR originalTitle LIKE %family% OR isAdult=false )AND (startYear <= 2000))) GROUP BY tconst