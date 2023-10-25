SELECT * FROM ( SELECT tb.*, nb.*, cr.*, p.* WHERE ((tb.titleType = 'Movie' AND (tb.startYear < 1980 OR tb.endYear > 1979)) AND (cr.job <> ''))) AS movies JOIN nb ON nb.primaryName LIKE CONCAT('%', usrInput) JOIN cr ON cr.directorID IN (nb.id) JOIN p ON p.characterID IN (cr.id)