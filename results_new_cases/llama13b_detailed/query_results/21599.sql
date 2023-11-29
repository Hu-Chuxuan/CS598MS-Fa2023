SELECT
    t.title_id, t.title_basics.primary_title, t.title_basics.genres,
    COUNT(DISTINCT r.user_id) AS num_votes
FROM
    title_basics t
INNER JOIN
    title_ratings r ON t.title_id = r.title_id
INNER JOIN
    name_basics n ON r.name_id = n.nconst
WHERE
    t.title_basics.primary_title = 'Peter Rabbit (2018)'
    AND t.title_basics.genres IN ('Animation', 'Comedy', 'Family')
    AND r.average_rating > 6
    AND n.primary_profession = 'actor'
GROUP BY
    t.title_id, t.title_basics.primary_title, t.title_basics.genres
HAVING
    COUNT(DISTINCT r.user_id) > 100
ORDER BY
    num_votes DESC