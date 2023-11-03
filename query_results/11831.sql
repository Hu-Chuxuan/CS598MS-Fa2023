SELECT DISTINCT tc.* FROM titles AS tc INNER JOIN name_basics ON tc.titleType = "movie" AND tb.primaryName = tc.name WHERE tc.isAdult = false ORDER BY tc.startYear ASC