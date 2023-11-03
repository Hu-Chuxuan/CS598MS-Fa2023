SELECT DISTINCT tc.* FROM title_basics as tb JOIN name_basic ns ON tb.titleType = ns.primaryTitle WHERE ns.category IN ('Comedy') AND (tb.startYear >=? OR bb.startYear <=?) AND (tb.endYear >=? OR bb.endYear <=?)