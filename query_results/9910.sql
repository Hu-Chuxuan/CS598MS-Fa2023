SELECT * FROM
( SELECT DISTINCT tc.*, tr.*, nr.*, np.*
FROM ((title_basic tb JOIN name_base na ON tb.primaryTitle = na.nconst))
JOIN title_rating tr ON tb.movieID=tr.tconst
JOIN title_crew tc ON tr.director=tc.dname
LEFT OUTER JOIN title_principal np ON tc.job = np.category AND np.characters IN ('Actor','Actress')
WHERE
tb.isadult = FALSE OR tb.startyear <= CURRENT_TIMESTAMP - interval'6 month'