SELECT * FROM
    movies m JOIN actors a ON m.actorId = a.id WHERE 
    (m.title LIKE '%Casper%' OR m.director LIKE '%Casper%') AND
    (a.name LIKE '%Casper%' OR a.birthYear BETWEEN 1879 AND 1883)