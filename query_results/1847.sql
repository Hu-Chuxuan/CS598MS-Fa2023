SELECT tc.* FROM title_basics AS tb WHERE tb.titleType ='movie' AND EXISTS( SELECT * FROM casts WHERE tb.numVotes > 700 ) ORDER BY tb.runtimeMinutes DESC LIMIT 5