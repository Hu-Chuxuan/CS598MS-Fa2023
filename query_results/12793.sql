SELECT tb.* FROM (SELECT * from title_basic WHERE titleType ='movie') as tb JOIN (SELECT *from rating where avg(rating) > 6 AND avg(numvotes)>0 )as r ON tb.titleId=r.titleid