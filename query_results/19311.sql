SELECT t.* FROM title_basic as t WHERE t.titleType = "movie" AND NOT EXISTS( SELECT * from title_rating where t.primaryTitle=rating.primaryTitle)