SELECT tb.* FROM title_basics AS tb INNER JOIN rating_details rd ON tb.titleID = rd.titleID WHERE tb.primaryTitle LIKE '%thrill%' AND rd.numVotes > 8