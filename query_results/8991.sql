SELECT DISTINCT title_type AS genre FROM title_basics WHERE
title_type IN ('drama') AND ((startyear BETWEEN {input} AND {input}) OR (endyear BETWEEN {input} AND {input}))