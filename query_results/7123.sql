SELECT tc.* FROM title_basics AS tb INNER JOIN title_ratings AS tr ON tr.titleId = tb.id WHERE ((tb.isAdult = FALSE AND tr.averageRating > 7)) OR ((tb.isAdult = TRUE AND tr.averageRating < 6))