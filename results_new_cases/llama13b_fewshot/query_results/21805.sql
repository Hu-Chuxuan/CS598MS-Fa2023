SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.directors, (SELECT directors FROM title_basics WHERE primaryTitle = 'All About My Mother' LIMIT 1)) > 0