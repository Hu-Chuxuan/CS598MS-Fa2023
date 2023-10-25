SELECT * FROM
( SELECT tb.*, nb.*, tc.*, nc.*, tr.*, nc*.pr.*, nc*.ch.* from
title_basics as tb join name_basicas as nb ON tb.primaryTitle =nb.primaryName JOIN
title_ratinga s as tr ON tb.title_id=tr.title_id AND nb.primaryName IN ('Blair','Witch') AND tr.averageRating >0.8
join title_crew as tc ON tb.title_Id =tc.title_ID
JOIN title_principal as np ON tc.director =np.job JOIN
name_basic as nc WHERE nc.primaryName='Damien' AND nc.category = 'actor'