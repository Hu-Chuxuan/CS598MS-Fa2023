SELECT * FROM `title` WHERE
(job LIKE '%director%' OR job LIKE '%writer%') AND
genre IN ('Action','Drama') ORDER BY rating DESC LIMIT 5