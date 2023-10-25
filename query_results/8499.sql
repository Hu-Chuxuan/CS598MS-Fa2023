SELECT * FROM
( SELECT tb.*, tc.*, nr.*, tcr.*, tcn.*, tcp.*, tpd.* WHERE
    tb.title_type = "movie" AND
	tb.start_year >= 2018 AND
    tb.end_year <= 2020 AND
     tbn.isadult=false ) AS tb INNER JOIN
( select avg(rating), count(*) from ratings group by rating order by rating desc limit 1) as r ON tb.average_rating > r.avg and tb.numvoters>r.count GROUP BY tb.primary_name ORDER BY avg DESC LIMIT 3