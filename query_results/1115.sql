SELECT * FROM (SELECT tc.*, nr.*, npc.*, rc.*, c.*
FROM title_basic AS tb
JOIN rating_counts AS rc ON tb.title_id = rc.title_id
LEFT JOIN name_basic AS nb USING(primary_name) LEFT JOIN title_rating AS tr USING(title_id)
LEFT JOIN title_crew AS tcr USING(director) LEFT JOIN name_basics AS nbj USING(primary_name)
WHERE tr.average_rating > 7 AND nbj.birthyear <= 1990 AND nbj.job IN ('Actor')
AND NOT EXISTS (SELECT * from title_principal WHERE nbj.category= 'PrinC' AND nbj.ordering < 5))
GROUP BY tc.title_type, tc.isadult ORDER by tc.startyear DESC LIMIT 5