SELECT tb.* FROM title_basic AS tb INNER JOIN title_rating AS tr ON tb.titleID = tr.titleId WHERE tr.averageRatings >= 6 AND tr.numVoters > 1