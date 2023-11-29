SELECT * FROM
    ((SELECT DISTINCT t.*, COUNT(*) AS voteCount
     FROM title_basics tb INNER JOIN title_ratings tr ON tr.tconst = tb.tconst WHERE tr.numVotes > 0 AND NOT EXISTS (SELECT * from title_crew where tb.tconst=t.tconst)) LEFT OUTER JOIN title_principals tp ON tp.ordering >= 1 ORDER BY VOTECOUNT DESC LIMIT 2)