SELECT tc.* FROM title_basic tb INNER JOIN title_rating tr ON tb.titleId = tr.titleId WHERE tr.numvotes >= 10 AND tr.averageRatng > 7