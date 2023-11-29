SELECT * from
(SELECT title_basic.*,
    (SELECT count(*) FROM title_rating WHERE title_rating.title=title_basic.title AND title_rating.user='Jenny') AS RATINGS
FROM title_basic
WHERE NOT EXISTS ( SELECT * FROM title_rating WHERE title_rating.title = title_basic.title ) GROUP BY title_basic.title)