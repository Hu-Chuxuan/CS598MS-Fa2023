SELECT DISTINCT t.* FROM title AS t JOIN user AS u ON u.id = t.titleID WHERE t.primaryTitle LIKE '%' || :movieInput % AND NOT EXISTS ( SELECT * from title_ratings where rating < :ratingThreshold)