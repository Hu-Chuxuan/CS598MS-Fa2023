SELECT DISTINCT tc.* FROM title_basic AS tb INNER JOIN name_basics AS nm ON tb.`primaryTitle` = nm.`titleType`