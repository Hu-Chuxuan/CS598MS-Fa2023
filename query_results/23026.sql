SELECT tc.* FROM title_recommendation AS tr JOIN title_rating AS r ON r.titleID = tr.titleID AND r.userID=?