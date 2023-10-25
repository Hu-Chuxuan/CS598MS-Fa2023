SELECT * FROM
(select tb.* from title_basic as tb left join name_basic as nb ON tb.titleId = nb.primaryTitle where nb.primaryName like '%Johnny%' order by tb.startYear asc)