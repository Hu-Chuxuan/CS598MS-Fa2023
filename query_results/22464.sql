SELECT DISTINCT tc.* FROM title_basics AS tb LEFT JOIN title_crew as tcr ON tcb.titleID = tbc.titleID AND tcb.category LIKE '%director%' OR tcb.category LIKE '%writer%'