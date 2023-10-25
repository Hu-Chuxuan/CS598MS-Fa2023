SELECT * FROM (title_basics tb LEFT JOIN (name_basics nb) ON (tb.primaryTitle = nb.primaryName)) WHERE nb.genre IN ('Sci-Fi', 'Action') AND (tb.startYear BETWEEN 1980 AND 2000)