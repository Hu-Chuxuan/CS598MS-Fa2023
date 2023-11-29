SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Kiss the Girls' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Bio-Dome' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Can''t Hardly Wait' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'My Best Friend''s Wedding' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Happy Gilmore' LIMIT 1)) > 0