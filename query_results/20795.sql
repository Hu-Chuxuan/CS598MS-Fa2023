SELECT title_basics.* FROM title_basics WHERE title_basics.`titleType` = "movie" AND title_basics.primaryTitle!= '' OR title_basics.originalTitle IS NULL