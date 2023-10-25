SELECT * FROM (
    SELECT DISTINCT
        t.*, rr.rating AS rating
    FROM titles AS t JOIN ratings AS r ON t.titleID = r.movieId WHERE EXISTS(SELECT t.*, rr.rating AS rating FROM titles AS t INNER JOIN ratings AS rr ON t.titleID = rr.movieId AND userPreferencedMovie IN ('Southpaw (2015), Nightcrawler (2014)) OR exists((select 1 from titles as t where t.titleid in(select titleID from ratings where userpreferredmovies='Southpaw (2015)'))))
) AS filtered WHERE rating > 6.8