SELECT DISTINCT tc.* FROM title_basics AS tb INNER JOIN title_crew AS tc ON tb.titleID = tc.titleID WHERE tb.startYear >= 1970 AND tb.endYear <= 2018