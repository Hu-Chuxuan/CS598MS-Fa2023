SELECT tb.* FROM title_basics AS tb INNER JOIN rating_details rd ON rd.title = tb.title WHERE tb.startYear BETWEEN? AND?