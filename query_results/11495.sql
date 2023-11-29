SELECT t.* FROM title_basics AS t WHERE ((
    (t.primaryTitle LIKE '%se7en%' OR t.originalTitle LIKE '%se7en%') AND NOT EXISTS ( SELECT * FROM title_principals AS p WHERE p.job = 'actor' AND p.category IN ('character','cast member'))))OR
((t.primaryTitle LIKE '%panic%')AND NOT EXISTS (SELECT * FROM title_principals AS p WHERE p.job='actor' AND p.category=('character','cast member')))