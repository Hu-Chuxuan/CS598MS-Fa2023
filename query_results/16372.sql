SELECT DISTINCT tb.* FROM title_basics as tb WHERE ((tb.titleType = "movie" OR tb.titleType IS NULL)) AND (tb.isAdult!= "true") AND (((tb.startYear >=? ) AND (tb.endYear <=?))) AND ((((tb.runtimeMinutes > 90) OR (tb.runtimeMinutes < 80)) OR (tb.runtimeMinutes IN ('90','80'))))