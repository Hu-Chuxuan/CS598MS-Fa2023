SELECT tb.* FROM title_basic AS tb JOIN (SELECT * from title_rating WHERE averageRating > 7 AND numvotes >= 10 ORDER BY avgRat DESC LIMIT 5) as tr ON tb.titleType = tr.averageRating