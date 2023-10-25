SELECT * FROM (
    SELECT t.*, r.numvotes AS rating, c.job AS castmember
       , c.characters.characterName
FROM `title` AS t INNER JOIN
    `cast` AS c ON t.`primaryTitle` = c.`movieId` AND c.`category` IN ('Actor', 'Actress')
INNER JOIN
(select t.titleID, avg(rating) from ratings where userid=0 group by titleID order by avg desc limit 8) r ON t.`titleID` = r.`titleID`