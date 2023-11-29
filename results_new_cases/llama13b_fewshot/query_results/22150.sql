SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle IN ('Steel Magnolias', 'Fried Green Tomatoes', 'The Notebook') LIMIT 3)) > 0