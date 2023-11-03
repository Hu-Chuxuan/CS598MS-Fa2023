SELECT DISTINCT tc.* FROM title_basics AS tc WHERE EXISTS( SELECT * from (title_ratings r JOIN (name_basics n ON r.numvotes = n.nconst)) WHERE r.averagerating >.7 AND n.primaryprofession LIKE '%actor%' OR n.job LIKE '%director%') ORDER BY tc.startyear DESC