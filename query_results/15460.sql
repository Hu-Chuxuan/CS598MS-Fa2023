SELECT TOP 5 * FROM ( SELECT tb.*,tr.*,tn.*,tc.*,tcr.*,tp.*,nts.name AS 'Actress', nts.gender as 'Gender' FROM 
title_basic tb JOIN 
title_rating tr ON tb.id = tr.movieId LEFT OUTER JOIN title_principal tp ON tp.movieID=tb.id LEFT OUTER JOIN name_basics tns ON tnb.primaryName = tns.nconst AND gender = 'Female' WHERE titleType='Movie'