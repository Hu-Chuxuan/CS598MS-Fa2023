SELECT * FROM
    TITLE_BASICS AS tb
INNER JOIN
    MOVIES AS m ON m.tconst = tb.tconst AND m.startyear <=? && m.endyear >=?
WHERE
    m.genre IN ('Drama') || m.rating > 6 OR m.averageRATING > 6 OR m.numvotes > 1000
GROUP BY tb.tconst ORDER BY RANDOM() LIMIT 2