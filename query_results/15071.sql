SELECT DISTINCT tc.* FROM title_basics AS tb INNER JOIN (title_ratings AS tr) ON tb.tconst = tr.tconst WHERE tr.numVotes > 0 AND tb.startYear >= '2018' AND tb.endYear <= '2021'