SELECT * FROM
(title_basics JOIN title_rating ON title_basics.id = title_rating.tconst WHERE title_basic.isadult=1 AND title_basics.startyear<='2018' ORDER BY title_rating.averagerating DESC LIMIT 2)