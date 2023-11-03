SELECT * FROM (title_basics tb INNER JOIN title_ratings tr ON tb.id = tr.movieID AND tr.rating >.9 WHERE NOT EXISTS( SELECT * FROM (name_basics np INNER JOIN title_crew tc ON np.primaryName = tc.director OR np.primaryName = tc.writer) WHERE np.job = "Director" ) UNION ALL SELECT * FROM (title_basics tb INNER JOIN title_ratings tr ON tb.id = tr.movieID AND tr.rating <.6) WHERE NOT EXISTS( SELECT * FROM (name_basics np INNER JOIN title_crew tc ON np.primaryName = tc.actor OR np.primaryName = tc.actress)) GROUP BY rating)