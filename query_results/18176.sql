SELECT * FROM (
    SELECT tb.*, tr.*, nr.*, c.*, p.*  
FROM title_basic AS tb INNER JOIN 
title_rating as tr ON tb.tconst = tr.tconst AND tr.numvotes > 0    
INNER JOIN name_base as nb ON tb.title_id=nb.primaryname 
LEFT OUTER JOIN title_crew as tc ON tb.title_id=tc.director OR tb.title_id=tc.writer     
LEFT OUTER JOIN title_principal as pt ON tb.title_id=pt.character OR tb.title_id=pt.job  
WHERE (tb.isadult='false')AND(nb.category='Actress/Actor')AND((tr.averagerating >= '7'))AND ((tr.avgvoters>=3)) AND (nb.primaryprofession LIKE '%actor%')AND (nr.nconst IN ('2', '3','4'))) AS tb LEFT OUTER JOIN 
(SELECT avg(a.rating) as rating, COUNT(*) as votes FROM title_rating as a WHERE (a.numvotes>0) GROUP BY a.movieid ORDER by rating DESC LIMIT 3 OFFSET 0) as r ON tb.title_id =r.movieid LEFT OUTER JOIN 
(select distinct p.primaryname from cast_member as cm where casting_role in ('Prinicipal Actor','Co-Star','Guest Star') and cm.casting_episode between '2'and'6' )as p ON tb.title_id=p.primaryname 
GROUP BY tb.title_id HAVING count(*) = 2