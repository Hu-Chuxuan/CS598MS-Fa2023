SELECT * FROM title_basics
WHERE (genres LIKE '%mystery%' OR genres LIKE '%action%')
AND (startYear <= 2018 AND endYear >= 2018)
AND (runtimeMinutes > 60 OR runtimeMinutes < 60)
AND (tconst NOT IN (SELECT tconst FROM title_principals WHERE category = 'actor'))
LIMIT 10