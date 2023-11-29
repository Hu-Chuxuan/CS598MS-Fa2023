SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.actors, 'Rachel McAdams') > 0