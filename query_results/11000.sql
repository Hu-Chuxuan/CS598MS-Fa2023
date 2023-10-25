SELECT * FROM
(SELECT r.*,(r+1).* FROM rating AS r WHERE r.titleId = 'TrainingDay' GROUP BY r.ratingOrdering) AS mr INNER JOIN
(SELECT c.*,(c+1).* FROM cast AS c WHERE c.titleId IN ('TrainingDay')) AS cm ON mr.castOrdering = cm.ordering