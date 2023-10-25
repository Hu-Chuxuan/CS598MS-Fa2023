SELECT * FROM
(select tb.* from imdb.title_basic as tb inner join imdb.name_basic as nb where nb.primaryName = "Mark Ruffalo" AND tb.isAdult <> true order by tb.startYear desc limit 2)