SELECT * FROM
(SELECT t.*, n.*, c.*, r.*, d.*, w.*
FROM movies m JOIN title_basics b ON m.titleId = b.id
JOIN name_basics n ON m.nameId = n.id
LEFT OUTER JOIN casts c ON c.movieId = m.id AND c.category IN ('Actor')
LEFT OUTER JOIN crews d ON d.movieId = m.id AND d.job IN ('Director','Writer')
WHERE b.isAdult=false
AND b.startYear >= 1980
AND b.endYear <= CURRENT DATE - 60
GROUP BY m.titleId