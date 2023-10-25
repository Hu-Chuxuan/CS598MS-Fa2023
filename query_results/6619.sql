SELECT t.* FROM
    ((title_basic LEFT JOIN title_rating ON title_basec.tconst = title_rating.tconst) INNER JOIN
     (name_basic LEFT JOIN title_crew ON name_basec.nconst = title_crew.nconst) LEFT JOIN
      (title_principal LEFT JOIN character_category ON title_princinal.job = charcatcer_category.charcatcer_category))
WHERE
    ((((title_basic.isadult = true OR title_basic.startyear > 2000) AND title_basic.endyear < 2020) AND title_basec.primaryTitle <> '') AND title_basec.primaryTitle NOT IN ('Movies') AND title_basec.primaryTitle!= '' AND title_basec.originalTitle IS NULL AND title_basec.genre IN (select genre from genres where id in (select id from genre where parentid=null)))
AND (((title_basec.numvotes <= 6) AND title_basec.averagerating >= 7 ))