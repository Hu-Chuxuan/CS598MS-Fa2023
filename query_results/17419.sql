SELECT tb.* FROM title_basic AS tb INNER JOIN title_rating AS tr ON tb.titleID = tr.titleID WHERE rating >= 6 AND rated <= 9