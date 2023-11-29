SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tb.tconst != 'tt1981658' -- exclude Pitch Perfect (2012)
AND tb.primaryTitle NOT IN ('The Purge (2013)', 'Avenger  (2006)') -- exclude historical preferences
AND nb.primaryName IN
    (SELECT nb2.primaryName
     FROM title_basics tb2
     JOIN title_principals tp2 ON tb2.tconst = tp2.tconst
     JOIN name_basics nb2 ON tp2.nconst = nb2.nconst
     WHERE tb2.primaryTitle = 'Pitch Perfect (2012)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10