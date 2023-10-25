SELECT * FROM 
title_basics tb, 
name_basics nb, 
title_rating tr, 
title_crew ctr, 
title_principal prc WHERE tb.primaryTitle = prc.ordering AND nb.category = 'actor' AND tb.startYear >=? AND tb.endYear <=?