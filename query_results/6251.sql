SELECT tb.* FROM title_basic AS tb JOIN title_rating AS tr ON tb.title_id = tr.title_id AND tr.averageRating >= 8