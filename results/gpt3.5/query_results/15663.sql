SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.genres NOT LIKE '%Adult%'
AND tb.startYear >= 2010
AND tb.runtimeMinutes <= 150
AND tr.averageRating >= 6
AND tr.numVotes >= 1000
AND tb.primaryTitle NOT IN ('Star Wars: Episode VIII – The Last Jedi (2017)', 'A Wrinkle in Time', 'Ender\'s Game (2013)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10