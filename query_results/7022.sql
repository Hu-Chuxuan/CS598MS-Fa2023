SELECT DISTINCT t.* FROM
title_basics AS t INNER JOIN
name_basics AS p ON t.primaryName = p.primaryName AND p.birthYear > 1980