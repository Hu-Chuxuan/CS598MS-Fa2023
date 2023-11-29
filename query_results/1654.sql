SELECT t.* FROM
    (SELECT * from imdb.title where type ='movie') AS t WHERE (t.startyear <=? AND t.endyear >=? )AND (t.primarytitle like '%(?)%')