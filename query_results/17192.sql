SELECT tc.* FROM title_ratings tr JOIN title_crew te ON te.id = tr.director WHERE tr.numvotes > 1 AND tr.averagerating < 7 ORDER BY avg(tr.avgrating) DESC LIMIT 3