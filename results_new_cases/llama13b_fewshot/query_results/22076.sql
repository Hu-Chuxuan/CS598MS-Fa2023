SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Brighton Beach Memoirs' LIMIT 1)) > 0
AND FIND_IN_SET(tb.categories, (SELECT categories FROM name_basics WHERE nconst = 'nm0005690' LIMIT 1)) > 0