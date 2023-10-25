SELECT t.* FROM title AS t JOIN user_preferences AS u WHERE
u.movie LIKE '%Mrs. Doubtfire%' OR u.movie LIKE '%Hitch%' OR u.movie LIKE '%Happy Gilmore%'