SELECT * FROM
(select tb.* from imdb.title_basic as tb inner join imdb.name_basic as nb using (primaryTitle)) AS TB
INNER JOIN imdb.rating_details as RD ON TB.isAdult = false AND TB.genreId IN ('6')AND TB.startYear <= 1990
WHERE ((TB.runtimeMinutes >= 1 && TB.runtimeMinutes < 120 ) OR (TB.runtimeMinutes BETWEEN 120 TO 180))