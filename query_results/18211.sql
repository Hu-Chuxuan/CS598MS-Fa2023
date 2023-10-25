SELECT * FROM
title_basics tb JOIN
name_basics nb ON tb.primaryTitle = nb.primaryName AND tb.startYear BETWEEN nb.birthYear AND nb.deathYear WHERE tb.isAdult > 0 OR nb.primaryProfession IN ('Actor', 'Actress') GROUP BY tb.movieId HAVING COUNT(tb.movieId) >= 3 ORDER BY tb.averageRating DESC LIMIT 6