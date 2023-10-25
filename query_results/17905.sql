SELECT DISTINCT tb.* FROM title_basic AS tb INNER JOIN title_rating as tr ON tb.titleType = tr.averageRating WHERE tb.isAdult = false AND EXISTS(SELECT * from title_crew where title_crew.director = tb.primaryDirector OR title_crew.writer=tb.primaryWriter)