SELECT * FROM titles WHERE tconst IN ('title_basics','name_basics') AND (isAdult = false OR isAdult IS NULL)