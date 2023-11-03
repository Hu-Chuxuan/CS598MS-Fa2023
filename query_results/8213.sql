SELECT t1.* FROM title_basic AS t1 INNER JOIN (title_rating AS tr ON tr.primaryTitle = t1.titleID) WHERE ((tr.numVotes >= :userPreferenceHistory[0]) AND (tr.averageRating > :userPreferenceHistory[1])) ORDER BY RAND() LIMIT 6