SELECT tc.* FROM title_basics AS tb INNER JOIN title_rating as tr ON tb.titleId =tr.titleId AND tr.userID=<user-id> WHERE (tb.isAdult='N' OR bb.isAdult IS NULL)