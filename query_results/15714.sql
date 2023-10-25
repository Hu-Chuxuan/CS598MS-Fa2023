SELECT * FROM
title_basics AS tb JOIN
name_basics as nb ON tb.titleType = 'n' AND nb.primaryName =? WHERE nb.birthYear >=? AND nb.deathYear <=?