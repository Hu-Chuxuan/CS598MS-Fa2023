SELECT * FROM ( SELECT DISTINCT(titleId), avg(rating) AS rating
FROM ratings WHERE rating >.5 AND userID =? ) AS rated_titles
INNER JOIN ( SELECT distinct(nameID) as castMemberID, castMemberName
FROM casting_info
WHERE genre IN ('Drama') OR genre in('Thrillers')) AS castMembers ON rated_titles.castMemberID = castMembers.castMemberID