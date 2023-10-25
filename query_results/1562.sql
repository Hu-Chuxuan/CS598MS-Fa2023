SELECT * FROM
(select tb.* from title_basic as tb inner join rating_basic rb where tb.title_id = rb.title_id limit 5)
inner join cast_member cm ON tb.movieID=cm.movieID