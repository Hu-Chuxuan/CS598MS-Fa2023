SELECT * FROM (title_ratings t INNER JOIN name_basics b ON t.primaryTitle = b.primaryTitle AND t.isAdult=b.isAdult) INNER JOIN title_principals p ON t.numVotes >= 6 WHERE ((t.startYear <= '2017') AND (t.endYear >='2018')) AND (p.job IN ('Actor', 'Director'))) ORDER BY rating DESC LIMIT 10