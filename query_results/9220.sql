SELECT DISTINCT tc.* FROM title_basics AS tb INNER JOIN name_basic AS nb ON tb.titleType ='movie' AND tb.primaryTitle=nb.name WHERE tb.isAdult = FALSE