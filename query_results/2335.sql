SELECT * FROM (SELECT rating, count(*) as voteCounts from titles WHERE genre = "Comedy" GROUP BY rating ORDER by voteCount DESC LIMIT 6)