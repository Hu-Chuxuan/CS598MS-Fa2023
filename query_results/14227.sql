SELECT tb.* FROM imdb_movies AS m INNER JOIN imdb_title_basic AS tb ON m.imdbrmovieid = tb.tmdbId WHERE m.imdbaromediaid IN ('6798') AND ((tb.isAdult = 'false' OR tb.isAdult IS NULL)) AND ((tb.startYear > '1960')) AND ((tb.endYear < '2010'))