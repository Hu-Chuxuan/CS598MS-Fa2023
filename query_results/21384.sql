SELECT tc.* FROM title_basics AS tb JOIN title_ratings as tr ON tr.title_id = tb.title_id AND tr.averageRating >.67 WHERE tr.numvotes >= 10