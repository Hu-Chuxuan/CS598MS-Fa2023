SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.tconst IN (SELECT DISTINCT(tconst) FROM title_principals WHERE category = 'actor' AND job = 'actor' AND nconst IN (SELECT nconst FROM name_basics WHERE primaryName LIKE '%Wayans Brothers%'))