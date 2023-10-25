SELECT * FROM
    (select m.* from Movie as m left join cast as c on m.id = c.movieId where m.primaryTitle like '%love%' AND m.titleType <> "TV Series") AS t WHERE t.numVotes > 5