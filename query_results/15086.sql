SELECT * FROM (title_basic INNER JOIN title_rating ON title_basic.tconst = title_rating.tconst) INNER JOIN (name_basic INNER JOIN title_crew ON name_basic.nconst=title_crew.director OR name_basic.nconst = title_crew.writer ) ON ((title_basic.primaryTitle IN ('Finding Nemo','Moana','Finding Dory') AND title_rating.numvotes > 7)) OR ((title_basic.isAdult='false')) ORDER BY rating DESC LIMIT 5