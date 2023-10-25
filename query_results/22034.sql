SELECT DISTINCT
    tc.* FROM
        ((title_basics AS tb LEFT JOIN
         (select distinct tc.* from title_crew as tc where tc.primaryRole = 'Director') AS td ON tb.tconst=td.tconst),
         (title_basics AS tb LEFT JOIN
          (select distinct tc.* from title_crew as tc WHERE tc.primaryRole='Writer')AS tw ON tb.tconst=tw.tconst))
WHERE EXISTS(SELECT * FROM title_rating WHERE rating > 6 AND title_basics.tconst IN (SELECT tconst FROM title_rating))