SELECT DISTINCT tb.* FROM title_basics AS tb WHERE tb.titleType ='movie' AND tb.isAdult!= "true" ORDER BY tb.startYear DESC