SELECT * FROM
title_basics tb
WHERE ((tb.isAdult = TRUE OR FALSE)) AND ((tb.startYear BETWEEN 1976 AND 1989) AND (tb.endYear >= 1976))