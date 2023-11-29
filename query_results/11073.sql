SELECT DISTINCT
    t.startyear AS startYear,
    t.endyear AS endYear,
    r.* FROM title_ratings R INNER JOIN title T ON R.tconst = T.tconst WHERE T.isadult!= 1 AND T.titletype IN ('movie') ORDER BY avgrating DESC LIMIT? OFFSET? 