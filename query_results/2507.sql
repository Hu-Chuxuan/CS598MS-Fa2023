SELECT DISTINCT title_name.* FROM titles AS t INNER JOIN title_crew ON(title_crews.director = t.id)