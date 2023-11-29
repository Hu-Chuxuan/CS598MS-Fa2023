SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Ace Ventura: Pet Detective' LIMIT 1), tb.genres) > 0
AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Superbad' LIMIT 1), tb.genres) > 0
AND (tb.startYear > 1990 AND tb.startYear < 2008)
AND EXISTS (SELECT 1 FROM title_ratings tr WHERE tr.tconst = tb.tconst AND tr.averageRating > 6)
AND NOT EXISTS (SELECT 1 FROM title_principals tp WHERE tp.nconst = (SELECT nconst FROM name_basics WHERE primaryName = 'Jim Carrey' LIMIT 1))