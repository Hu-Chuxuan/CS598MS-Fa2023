SELECT * FROM
( SELECT tb.*, tr.*, nr.*, tc.*, tn.*, tcr.* from (title_basic as tb join rating_basic as rb where rb.tconst = tb.tconst) AS rr JOIN title_rating as tr WHERE rr.tconst=tr.tconst AND tr.averageRatig >= 7/10 UNION ALL select tb.*, tcr.* from (title_basic as tb join crew_basic as cr where cr.tconst=tb.tconst )AS crJOIN title_crew as tcr WHERE cr.tconst=tcr.tconst)