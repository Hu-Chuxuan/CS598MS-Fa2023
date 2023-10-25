SELECT t1.* FROM title_basics AS tb INNER JOIN
(title_rating AS tr RIGHT OUTER JOIN title_crew TC ON tr.id = TC.id) LEFT OUTER JOIN
(name_basics NB INNER JOIN title_principal TP WHERE NB.id=TP.nconst) ON tr.id=NB.nconst