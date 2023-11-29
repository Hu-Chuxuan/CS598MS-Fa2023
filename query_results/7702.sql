SELECT * FROM (SELECT t.*, COUNT(*) AS cnt_votes
FROM title_basic AS t INNER JOIN title_rating AS r ON t.tconst = r.tconst GROUP BY t.tconst ORDER BY cnt_votes DESC LIMIT 2)