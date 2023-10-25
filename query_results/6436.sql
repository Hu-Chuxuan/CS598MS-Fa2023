SELECT t.* FROM title AS t WHERE
    t.title_id IN (%(titles)s)