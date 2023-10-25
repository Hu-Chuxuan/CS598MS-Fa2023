SELECT
    m.*
FROM movies AS m
INNER JOIN ( SELECT * FROM title_basics WHERE tconst = 'The Hangover') AS h ON m.title_id=h.titleId
WHERE
	m.primaryTitle LIKE '%Hangover%' OR
	m.originalTitle LIKE '%Hangover%' OR
	m.isAdult='true'