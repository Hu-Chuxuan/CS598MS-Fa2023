SELECT t.* FROM title_ratings r JOIN title_basics b ON r.title_id = b.tconst WHERE r.numvotes > 1 AND r.averagerating < 6