SELECT t1.* FROM title_basic AS tb JOIN title_rating as tr ON tb.titleId = tr.titleID WHERE tr.averageRATING >.8