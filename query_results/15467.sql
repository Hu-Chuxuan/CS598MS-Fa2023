SELECT * FROM (title_principals p INNER JOIN title_rating r ON p.category = "Kids" AND p.job IN ("Actor", "Actress") WHERE NOT EXISTS(SELECT * from title_ratings rr where rr.averageRating >.6)) as t INNER join title_basic b inner join title_crew c on b.tconst=c.tconst