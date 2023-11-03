SELECT rating AS 'Ratings', movieID as 'Movie ID' FROM ratings WHERE userid =? AND (rating >? OR rating <?) GROUP BY movieID HAVING COUNT(movieID)>=? ORDER BY count(*) DESC LIMIT?