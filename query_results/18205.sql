SELECT * FROM
title_basics tb WHERE tb.isadult = true AND
(tb.startyear <= $2 OR tb.endyear >= $2)