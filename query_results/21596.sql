SELECT tc.* FROM title_basic AS tb JOIN genre g ON g.genreID = tb.titleGenre WHERE tb.primaryTitle LIKE '%' || @inputString || '%'