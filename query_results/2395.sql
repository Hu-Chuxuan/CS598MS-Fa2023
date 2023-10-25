SELECT DISTINCT tc.* FROM title_basics AS tb INNER JOIN
(SELECT * from movies where genre = "Superhero") as s ON s.title_id=tb.titleID