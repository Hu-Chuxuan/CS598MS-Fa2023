SELECT * FROM tconst WHERE tconst = 'title' AND
((startYear BETWEEN 2000-01-01 and 2018-07-01))AND ((endYear >= 2000-01-01 OR endYear IS NULL))
and genre IN ('Drama', 'Action') and avgRating > 6