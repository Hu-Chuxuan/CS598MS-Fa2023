SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON nb.nconst = tp.nconst
WHERE nb.primaryName = 'Jennifer Lawrence'
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('The Hunger Games: Mockingjay – Part 1 (2014)', 'The Hunger Games (2012)', 'American Hustle (2013)')
ORDER BY tr.numVotes DESC
LIMIT 5