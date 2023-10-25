SELECT * FROM title WHERE tconst = "title" AND
(isAdult=false OR isAdult IS NULL)AND (startYear<2001 OR startYear>2010 )AND (runtimeMinutes>120 OR runtimeMinutes<180 )