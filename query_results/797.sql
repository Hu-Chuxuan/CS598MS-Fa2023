SELECT t.titleID AS "Movie ID", t.titleType as "Movie Type",
(CASE WHEN t.primaryTitle = '' THEN NULL ELSE t.titleType END) + '-' + CASE WHEN t.originalTitle IS NOT NULL AND t.isAdult=true then CONCAT('- ', t.originalTitle) else t.primaryTitle END AS "Title Name", g.averageRating AS "Average Rating", COUNT(*) AS "Number Of Ratings" FROM title_ratings r JOIN title_basics b ON r.movieID = b.titleID LEFT OUTER JOIN name_basics nb ON nb.nameID = b.primaryName WHERE r.rating > 6.0 GROUP BY r.movieID ORDER BY rating DESC LIMIT 5