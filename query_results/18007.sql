SELECT DISTINCT tb.* FROM
    ((title_rating r INNER JOIN title_basics t ON r.title_id = t.tconst)) INTERSECT
    ((name_basic np INNER JOIN title_principal tp ON np.primary_name_id = tp.nconst AND np.category='actor')) WHERE t.isadult=0 ORDER BY t.startyear DESC LIMIT 5