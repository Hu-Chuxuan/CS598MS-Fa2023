SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Family', tb.genres) > 0
AND (SELECT COUNT(*) FROM title_principals WHERE category = 'actor' AND job = 'director' AND nconst IN (SELECT nconst FROM name_basics WHERE primaryName = 'Sam Mendes')) > 0