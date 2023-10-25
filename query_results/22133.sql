SELECT * FROM
(select tc.* from title_basic as tb inner join name_basic as nb where tb.title_id = nb.name_id AND nb.primaryName='HARRY POTTER') AS TB INNER JOIN
((select tc.* from title_rating as tr WHERE tr.averageRating >.97) AS TR INNER JOIN
 ((select tc.*from title_crew as tw WHERE tw.director IN ('J.K Rowling'))AS TC INNER JOIN
   ((select tc.* from title_principal as p WHERE p.characters = 'Fred Weasley' OR p.job= 'Student')AS PC INNER JOIN
    ((select tc.* from title_crew as c WHERE c.job='Actor/Actress' )AS CM INNER JOIN
     ((select tc.* from title_principal as pr WHERE pr.category='Prince')AS PRINCE INNER JOIN
      ((select tc.* from title_crew as cc WHERE cc.job='Writer')AS Writer INNER JOIN
       ((select tc.* from title_principal as pp WHERE pp.character IS NULL))AS Actor INNER JOIN
        ((select tc.* from title_crew as dc WHERE dc.job='Director')AS Director INNER JOIN
         ((select tc.* from title_principal as cp WHERE cp.job='Producer'))AS Producer)