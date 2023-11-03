SELECT DISTINCT tc.* FROM title_basic AS tb INNER JOIN title_rating as tr ON tr.title_id = tb.title_id INNER JOIN name_basics as nb ON nb.name_id = tb.name_id INNER JOIN title_crew as tcr ON tcr.title_id = tb.title_id INNER JOIN title_principal as tpr ON tpr.title_id = tb.title_id WHERE (tb.isadult=false AND (tr.averageRating >= 8 OR tr.numvotes>=9)) ORDER BY tr.averageRATING DESC LIMIT 6