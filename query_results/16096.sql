SELECT tb.* FROM title_basic as tb INNER JOIN title_rating as tr ON tb.titleID = tr.titleID WHERE tr.averageRating >.8 AND tb.genre LIKE '%comedy%' ORDER BY tb.numVOTES DESC LIMIT 6