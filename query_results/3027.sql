SELECT t.* FROM title_ratings r INNER JOIN title_basic b ON r.titleID = b.id WHERE b.isAdult = true AND r.numvotes >= 6