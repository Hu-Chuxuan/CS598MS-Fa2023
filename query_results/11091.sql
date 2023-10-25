SELECT * FROM (
    SELECT t.*, r.rating AS rating_rating, r.numvoters as rating_numvoter
FROM title_basic t
LEFT JOIN title_ratings r ON t.titleID = r.titleid
WHERE t.isadult <> true AND t.startyear > 1980 AND t.endyear < 2020 AND NOT EXISTS(select * from title_recommended tr WHERE tr.userid = $1 AND tr.movieid = m.titleid)