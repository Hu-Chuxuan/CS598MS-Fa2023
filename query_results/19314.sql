SELECT t.* FROM title_basic AS t INNER JOIN title_rating AS r ON t.titleID = r.titleID WHERE r.averageRATING >=? AND r.numVOTES > 5