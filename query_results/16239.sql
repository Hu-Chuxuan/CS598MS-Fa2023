SELECT DISTINCT titles.* FROM title_basics AS tb INNER JOIN title_ratings as tr ON tb.titleID = tr.titleID WHERE tb.primaryTitle LIKE '%Black%'