SELECT DISTINCT tc.* FROM titlerecommendation as tr INNER JOIN titles AS t ON t.titleId = tr.recomTitleId INNER JOIN title_ratings as r ON r.titleId=tr.movieId INNER JOIN name_basics as nb ON nb.nameID=r.averageRating WHERE nb.primaryName='Johnny Depp' AND nb.category="Actor" GROUP BY r.titleId