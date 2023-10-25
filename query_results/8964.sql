SELECT t.* FROM title_principals AS p JOIN title_basics AS b ON p.`category` = b.`titleType`, title_ratings AS r WHERE ((b.primaryName LIKE '%Kramer%' OR b.primaryName LIKE '%Sam%') AND (r.averageRating > 7)) ORDER BY b.startYear DESC