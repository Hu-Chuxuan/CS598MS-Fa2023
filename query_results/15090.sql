SELECT tb.* FROM title_basics AS tb INNER JOIN title_ratings as tr ON tb.titleID = tr.titleID WHERE tb.primaryTitle LIKE '%It%' AND tr.averageRATING > '6' ORDER BY tr.numvotes DESC LIMIT 5