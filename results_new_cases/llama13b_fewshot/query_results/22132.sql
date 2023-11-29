SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Martian' LIMIT 1)) > 0
AND startYear > 2000
AND (
    FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'A Low Down Dirty Shame' LIMIT 1)) > 0
    OR FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Choke' LIMIT 1)) > 0
)
AND rating > 6