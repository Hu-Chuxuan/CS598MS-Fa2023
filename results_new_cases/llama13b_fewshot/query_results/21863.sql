SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle IN (SELECT tconst FROM title_ratings WHERE averageRating > 7 AND numVotes > 10000 LIMIT 5) LIMIT 1)) > 0