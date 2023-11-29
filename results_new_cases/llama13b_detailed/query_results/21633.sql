SELECT
    t.title_id,
    t.primary_title,
    t.runtime_minutes,
    t.genres,
    c.name,
    c.birth_year,
    c.death_year,
    c.known_for_titles
FROM
    title_basics t
INNER JOIN
    name_basics c ON t.primary_title = c.primary_name
WHERE
    t.genres LIKE '%Crime%'
AND t.runtime_minutes > 90
AND c.known_for_titles @> ARRAY['Forrest Gump (1994)', 'Big Fish (2003)']
ORDER BY
    t.primary_title