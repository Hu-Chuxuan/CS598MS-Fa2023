SELECT * FROM title_basics WHERE titleType = “movie” AND (primaryTitle LIKE '%Wrinkle%' OR primaryTitle LIKE '%Congeniality%') ORDER BY rating DESC LIMIT 3 OFFSET?