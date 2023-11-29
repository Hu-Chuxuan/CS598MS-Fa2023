SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Toy Story' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Coco' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Coraline' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Finding Dory' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Mary Poppins' LIMIT 1)) > 0