SELECT tb.* FROM title_basics AS tb INNER JOIN title_ratings as tr ON tb.titleId = tr.title_id WHERE tr.average RATING > '7' AND (tb.isAdult = false OR bb.isAdult = true)