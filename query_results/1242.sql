SELECT * FROM (
    SELECT DISTINCT * from (SELECT * from title_ratings where averageRating>6 order by avgRatings desc limit 20 ) rr
    union ALL SELECT * from (SELECT * from title_rating where numvotes>500 order by numvotes asc limit 20 ) vh
    UNION ALL SELECT * from (SELECT * from title_principals where category='actress' and gender=any('male','female') order by job desc limit 20 ) ah
    UNION ALL SELECT * from (SELECT * from title_crew where categories like any ('%director%', '%producer%', '%writer%') order by name asc limit 20 ) ad
    UNION ALL SELECT * from (SELECT * from title_basic where years between 1990 AND 1999 order by startyear desc limit 20 ) yb
) q
where not exists (SELECT * from title_basic b WHERE Q.startyear = B.endyear)
and not exists (SELECT * from title_crew c WHERE Q.primaryDirector = C.id)