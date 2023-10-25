SELECT * FROM (
	SELECT DISTINCT tb.*,
    IF(tb.startYear < userInputStartDate OR tb.endYear > userInputEndDate, NULL, tb.startYear + '-' + CAST((tb.startYear - userInputStartDate)/365 AS STRING)) AS yearFrom,
    IF(tb.startYear >= userInputStartDate AND tb.endYear <= userInputEndDate,NULL,'-')+CAST((userInputEndDate-tb.startYear )/365 AS STRING) AS yearTo,
    CASE WHEN tb.genre = "Comedy" THEN 1 ELSE 0 END AS comedyScore,
    CASE WHEN tb.genre LIKE "%Action%" THEN 1 ELSE 0 END AS actionScore,
    CASE WHEN tb.genre IN ('Drama','Horror') THEN 1 ELSE 0 END AS dramaAndHorrorScore,
    1 AS genreCount
   FROM title_basics tb
 WHERE
    NOT EXISTS ( SELECT * from title_rating tr where tr.title=tb.primaryTitle AND tr.numvotes>0 GROUP BY tb.primaryTitle HAVING COUNT(*)>1)