SELECT DISTINCT tconst FROM title_basic WHERE titleType='movie' AND ((startyear>1990 OR endyear<1990)) ORDER BY titleType DESC LIMIT 5 OFFSET 0
UNION ALL
SELECT DISTINCT tconst FROM title_rating GROUP BY tconst HAVING avg_votes > 3
ORDER BY avg_vote DESC LIMIT 10 OFFSET 0
UNION ALL
SELECT DISTINCT tconst FROM title_crew UNION SELECT DISTINCT tconst FROM title_principal UNION SELECT DISTINCT nconst FROM name_basic WHERE birthyear BETWEEN 1900 AND 1990 AND deathyear IS NULL
ORDER BY nconst ASC LIMIT 5 OFFSET 0