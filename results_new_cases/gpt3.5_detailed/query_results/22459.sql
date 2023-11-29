SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%'
AND primaryTitle NOT IN ('Girls Trip (2017)', 'It (1990)', 'Super Troopers (2001)', 'Super Troopers 2 (2018)', 'Pineapple Express  (2008)', 'Bad Boys  (1995)')
ORDER BY averageRating DESC
LIMIT 10