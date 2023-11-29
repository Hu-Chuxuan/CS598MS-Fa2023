SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'It' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Sweeney Todd: The Demon Barber of Fleet Street' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Mama' LIMIT 1)) > 0