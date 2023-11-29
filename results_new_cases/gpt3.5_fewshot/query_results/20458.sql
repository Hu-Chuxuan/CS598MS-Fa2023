SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
OR FIND_IN_SET('Crime', tb.genres) > 0
OR FIND_IN_SET('Drama', tb.genres) > 0
ORDER BY tb.numVotes DESC
LIMIT 10