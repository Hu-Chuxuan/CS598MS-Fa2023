SELECT tb.* FROM title_basics AS tb INNER JOIN title_ratings AS tr ON tr.titleID = tb.id WHERE tr.numvotes > 1 AND ((tr.averagerating BETWEEN? AND?)) ORDER BY tr.averagerating DESC LIMIT 10