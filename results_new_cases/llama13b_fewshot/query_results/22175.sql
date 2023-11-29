SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Steel Magnolias' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = '9 to 5' LIMIT 1)) > 0
AND tb.primaryTitle LIKE '%Romantic Comedy%'
LIMIT 10