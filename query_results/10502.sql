SELECT * FROM ((select rating as avg from ratings where userid=?) union all select title.* from titles join ratings using(titleId)) order by avg desc limit?