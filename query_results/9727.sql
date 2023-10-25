SELECT * FROM title_basic WHERE titleType = "movie" AND tconst IN(
    SELECT DISTINCT tconst from title_ratings where avgRating > 6)