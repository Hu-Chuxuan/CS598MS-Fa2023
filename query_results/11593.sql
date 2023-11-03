SELECT * FROM ( SELECT tb.*, tr.*, nr.*, nc.* WHERE tb.title_type = 'Movie' AND tb.isadult!= 0 AND tr.averagerating > 6 AND (nr.numvotes >= 7) OR (nc.category IN ('Horror', 'Thriller')) ) AS tbl JOIN tb ON tbl.primaryname LIKE '%'+trunc(userinput)+'%' ORDER BY nr.numvotes DESC LIMIT 10