SELECT * FROM title_basic tb JOIN name_basic nb ON tb.titleId = nb.titleId WHERE nb.primaryName LIKE '%' || :inputString || '%'