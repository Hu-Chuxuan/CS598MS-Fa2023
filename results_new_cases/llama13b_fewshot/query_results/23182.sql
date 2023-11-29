SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle IN (SELECT tconst FROM title_basics WHERE nconst IN (SELECT nconst FROM name_basics WHERE primaryName IN ('Fight Club', 'Gone Girl')) LIMIT 1) LIMIT 1)) > 0