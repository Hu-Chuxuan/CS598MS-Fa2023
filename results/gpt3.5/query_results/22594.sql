SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2010
AND (tb.genres LIKE '%Action%' OR tb.genres LIKE '%War%')
AND tb.primaryTitle != '12 Strong (2018)'
AND tb.primaryTitle NOT IN ('The Hurt Locker (2008)', 'Inglourious Basterds (2009)', 'Dunkirk  (2017)', 'Darkest Hour  (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5