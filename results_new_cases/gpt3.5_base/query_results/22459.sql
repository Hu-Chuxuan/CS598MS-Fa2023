SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('Girls Trip (2017)', 'It (1990)', 'Super Troopers (2001)', 'Super Troopers 2 (2018)', 'Pineapple Express  (2008)', 'Bad Boys  (1995)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5