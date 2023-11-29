SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' OR tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Romantic%'
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Crazy, Stupid, Love (2011)', 'Shakespeare in Love (1998)', 'The Choice  (2016)', 'The Lucky One  (2012)', 'When Harry Met Sally... (1989)', 'Passengers  (2016)', "You've Got Mail (1998)", 'A Walk to Remember (2002)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10