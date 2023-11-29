SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'The Big Sick' LIMIT 1), tb.genres) > 0
OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'American Pie  (1999)' LIMIT 1), tb.genres) > 0)
AND tb.primaryTitle NOT IN ('Tully')
AND tb.primaryTitle NOT IN ('The Big Sick')
AND tb.primaryTitle NOT IN ('The Shawshank Redemption (1994)')
AND tb.primaryTitle NOT IN ('Chasing Amy (1997)')