SELECT tc.* FROM title_basics AS tb INNER JOIN name_basics AS nb ON(tb.titleType = nb.primaryTitle)