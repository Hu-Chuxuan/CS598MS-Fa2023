SELECT t.* from title_ratings r join title_basic b on r.tconst = b.tconst where r.averageRating > 4 order by r.numvotes desc limit 5 