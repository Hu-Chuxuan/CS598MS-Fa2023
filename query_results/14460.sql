SELECT * FROM title WHERE (titleType = "movie" AND primaryTitle IN ("funny") OR (primaryTitle NOT LIKE "%stupid")) ORDER BY rating DESC LIMIT 10