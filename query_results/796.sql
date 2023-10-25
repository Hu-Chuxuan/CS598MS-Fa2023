SELECT DISTINCT tc.* FROM title_basic AS tb INNER JOIN title_rating AS tr ON tb.titleType = tr.primaryTitle WHERE tb.startYear <=? AND tb.endYear >=? AND (tr.averageRating >? OR tr.numVotes >?)