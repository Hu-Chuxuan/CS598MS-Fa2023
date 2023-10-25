SELECT * FROM title_recommended WHERE (title_id IN( SELECT tconst FROM title_ratings JOIN title_principals ON title_ratings.tconst = title_principals.tconst)) AND (title_id NOT IN('Serendipity', 'Groundhog Day')) ORDER BY rating DESC LIMIT 3