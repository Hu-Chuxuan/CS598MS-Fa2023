SELECT * FROM (title_basics tb LEFT JOIN rating_data rd ON tb.tconst = rd.movie) INNER JOIN (name_basics nb LEFT JOIN person p ON nb.primaryName = p.nconst) ON ((tb.nconst=nb.primaryName OR nb.nconst='') AND (tb.job=p.category)) WHERE rd.numVotes >= 50