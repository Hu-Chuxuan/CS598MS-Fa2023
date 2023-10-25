SELECT * FROM
(title_basics tb JOIN name_basics n ON tb.id = n.id WHERE n.primaryName LIKE '%Great%') AS T
JOIN (title_ratings tr LEFT OUTER JOIN rating r RIGHT OUTER JOIN user u USING (username)) ON TR.ID = U.MOVIES WHERE T.TITLE LIKE '%Great%' AND r IS NULL