SELECT * FROM
( SELECT tb.*, tr.*, nb.*, tc.*, tp.*, nc.* FROM imdb.title_basic AS tb INNER JOIN imdb.title_rating as tr ON tb.primaryTitle = tr.averageRating WHERE ((tr.numVotes >= 7 AND tr.averageRating <= 6)) UNION ALL select title_basic.* from title_basic where year > 2010 ) AS mb LEFT OUTER join cast as c USING (titleId) ORDER BY cast.ordering DESC LIMIT 2