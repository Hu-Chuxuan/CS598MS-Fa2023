SELECT * FROM
    title_principals AS tp JOIN
    name_basics AS nb ON nb.primaryName = tp.characters WHERE
(tb.startYear BETWEEN? AND? OR tb.endYear BETWEEN? AND? )AND (tb.genre IN ('Drama','Horror') OR tb.titleType LIKE '%Action%' OR tb.isAdult=true)