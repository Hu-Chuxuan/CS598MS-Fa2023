SELECT tb.* FROM title_basic as tb INNER JOIN title_rating AS tr ON tb.titleID = tr.titleID WHERE ((tr.numVote >= 7 AND tr.averageRate > 6)) ORDER BY tr.avgRate DESC LIMIT 5