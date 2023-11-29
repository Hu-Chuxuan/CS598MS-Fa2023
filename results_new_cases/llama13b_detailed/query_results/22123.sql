SELECT * FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_crew c ON t.tconst = c.tconst
JOIN title_principals p ON t.tconst = p.tconst
WHERE n.primaryProfession LIKE '%actor%'
AND t.primaryTitle LIKE '%Christopher Walken%'
AND c.directors LIKE '%Christopher Walken%'
AND p.job LIKE '%Christopher Walken%'
ORDER BY t.startYear DESC, t.runtimeMinutes DESC