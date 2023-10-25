SELECT * FROM title_basics tb INNER JOIN title_ratings tr ON tr.title_id = tb.movieID WHERE (tb.startYear <= '2019' AND tb.endYear >= '1968') OR ('The Phantom of the Opera  (2004)' IN (SELECT titles FROM name_basics WHERE genre='Drama')) OR ('Superbad  (2007)' IN (SELECT titles FROM name_basics WHERE genre='Comedy'))