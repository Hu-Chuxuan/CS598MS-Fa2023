SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Girls Trip' LIMIT 1), tb.genres) > 0
AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Pineapple Express' LIMIT 1), tb.genres) > 0
AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Super Troopers' LIMIT 1), tb.genres) > 0
AND tb.primaryTitle NOT IN ('Anchorman: The Legend of Ron Burgundy', 'Uncle Buck', 'Step Brothers', 'National Lampoon\'s Vacation', 'National Lampoon\'s Christmas Vacation')