SELECT tc.* FROM Title_Basics AS tb JOIN Title_Crew AS tc ON tb.titleType = "movie" AND tb.primaryTitle LIKE '%sci%' AND tc.job = "director"