SELECT * FROM
(
    SELECT t.*, r.rating AS rating, c.category as genreID from
        imdb.title_basic t INNER JOIN imdb.name_basic n ON t.primaryTitle = n.primaryName AND n.birthYear > 0 GROUP BY t.title_id HAVING count(*) >= 3
    UNION ALL
    SELECT m.movieID AS id, m.titleID AS titleID,m.genreID as genreID, n.actorID as actorID,n.directorID as directorID FROM imdb.moviesMATCH m LEFT OUTER JOIN imdb.title_casts TC ON MATCHED(TC.movieID=m.movieID,TC.actortitleID=n.titleID) WHERE m.rating>8 AND m.genreID IN ('Comedy','Drama') ORDER BY m.averageRating DESC LIMIT 6
UNION ALL
    SELECT m.movieID AS id, m.titleID AS titleID, n.actorID as actorID,n.directorID as directorID, n.writerID as writerID FROM imdb.moviesMATCH m LEFT OUTER JOIN imdb.title_casts TC ON MATCHED(TC.movieID=m.movieID,TC.actortitleID=n.titleID) WHERE m.rating>8 AND m.genreID IN ('Action','Sci-Fi','Fantasy')ORDER BY m.averageRating ASC LIMIT 6
)
WHERE userInput LIKE '%' || :userInput || '%' OR userPrefered LIKE '%%' || :userPreferences || '%%'