SELECT * FROM (SELECT t.`title`, COUNT(*) as ratingCounts from `movielens`.title_ratings as t where t.`numvotes>0`)
AS T