SELECT DISTINCT t.titleID as TITLEID FROM (
    SELECT tc.*, r.averageRating AS RATING
        FROM imdb.title_basic tb INNER JOIN imdb.title_rating tr ON tb.titleID = tr.titleID AND tr.year >=? AND tr.voteCount > 0 WHERE tb.genre IN ('Drama') OR tb.primaryProfession LIKE '%Actor%' ORDER BY tr.numVOTES DESC LIMIT 6