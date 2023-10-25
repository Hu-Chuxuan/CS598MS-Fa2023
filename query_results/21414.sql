SELECT DISTINCT titles.* FROM
( SELECT tconst AS titleID, titleType, PRIMARY TITLE as title, originalTitle, isAdult, startYEAR as year, END YEAR as endyear,runtimeMINUTES as time, GENRES as genre FROM title_basics WHERE (titleType = "movie") AND (primaryTitle IS NOT NULL)) titles
INNER JOIN name_basic ON titles.titleID=name_basic.titleID
INNER JOIN title_rating ON names_basic.titleID=titles_rating.titleID
WHERE ((genre LIKE '%Action%' OR genre LIKE '%Crime%')AND((startYEAR BETWEEN 1980 AND 1997)))
ORDER BY rating DESC