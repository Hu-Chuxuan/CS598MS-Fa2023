SELECT tb.* FROM title_basics AS tb INNER JOIN
( SELECT tc.* FROM title_ratings WHERE avgRat >=.8 AND tc.numVotes > 1 ) as tr ON tb.titleType = tr.titleType