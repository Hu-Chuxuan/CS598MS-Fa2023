SELECT * FROM (title_basics tb LEFT JOIN title_ratings tr ON tb.primaryTitle = tr.primaryTitle WHERE tb.startYear BETWEEN? AND? GROUP BY tb.primaryTitle HAVING COUNT(tb.primaryTitle)>? AND SUM((tr.averageRating*tb.runtimeMinutes)/(tr.numVotes+1))>?) ORDER BY AVG(SUM((tr.averageRating*tb.runtimeMinutes)/(tr.numVotes+1))) DESC LIMIT 5