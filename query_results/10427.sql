SELECT tb.* FROM title_basics AS tb INNER JOIN (title_rating AS tr AND tc.averageRating > 7) WHERE tb.isAdult = false