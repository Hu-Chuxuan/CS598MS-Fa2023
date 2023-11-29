SELECT primaryTitle, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle NOT IN ('Bright (2017)', 'Divergent  (2014)', 'Taken  (2008)')
AND genres IN (SELECT genres FROM title_basics WHERE primaryTitle IN ('Bright (2017)', 'Divergent  (2014)', 'Taken  (2008)'))
ORDER BY averageRating DESC
LIMIT 5