SELECT title_basic.* FROM title_basic WHERE (title_basic.startyear BETWEEN 1980 AND 1985 OR title_basic.startyear = \N )AND ((title_basic.endyear IS NULL OR title_basic.endyear > 1985)) AND ((title_rating.averageRATING < 6.5 || title_rating.numvotes <= 100))