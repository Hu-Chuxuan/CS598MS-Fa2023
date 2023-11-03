SELECT DISTINCT t.* FROM titleratings AS r INNER JOIN titles AS t ON r.titleid = t.titleID WHERE r.averagerating >.6 AND NOT EXISTS(SELECT * FROM movies WHERE m.movieid=r.moviedetails.id AND m.genreid='horror') ORDER BY t.startyear DESC