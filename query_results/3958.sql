SELECT
    tc.*
FROM
    titles AS tc
WHERE
    tc.titleType ='movie' AND
    tc.primaryTitle IN ('True Romance (1993)') OR
    tc.originalTitle IN ('True Romance (1993)')