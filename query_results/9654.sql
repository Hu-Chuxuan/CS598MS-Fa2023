SELECT t.title_id AS id FROM
(
    SELECT titleID, COUNT(*) AS votesCount FROM ratings WHERE rating > 6 AND type = "movie" GROUP BY titleID
) as voteTable JOIN titles ON voteTable.titleID=titles.title_id