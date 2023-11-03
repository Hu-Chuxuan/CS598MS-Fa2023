SELECT t.titleType as Movie Type, t.primaryTitle as Title Name, r.averageRating as Rating from title_ratings AS r INNER JOIN title_basicst AS t ON r.numvotes = t.startyear + t.endyear - t.runtimeminutes WHERE t.isadult=true AND r.numvotes >= 8