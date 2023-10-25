SELECT tb.* FROM title_basics AS tb JOIN title_rating AS tr ON tb.titleId = tr.titleId WHERE tb.isAdult = true AND tb.startYear >= 1970 ORDER BY rating DESC LIMIT 1