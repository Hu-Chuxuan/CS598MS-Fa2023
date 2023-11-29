SELECT * FROM title_basic WHERE title_type = 'Movie' AND startyear <= 1997 ORDER BY avgrating DESC LIMIT 3
UNION ALL
SELECT * FROM title_basic WHERE title_type = 'Movie' AND startyear >= 1997 ORDER BY avgrating ASC LIMIT 3
UNION ALL
SELECT * FROM title_basic WHERE title_type = 'Movie' AND endyear > 1997 ORDER BY avgrating DESC LIMIT 3
UNION ALL
SELECT * FROM title_basic WHERE title_type = 'Movie' AND endyear < 1997 ORDER BY avgrating ASC LIMIT 3
UNION ALL
SELECT * FROM title_basic WHERE title_type IN ('TVSeries','TVEpisodes') OR title_type IS NULL AND startyear >= 1997 ORDER BY avgrating ASC LIMIT 3
ORDER BY rand()