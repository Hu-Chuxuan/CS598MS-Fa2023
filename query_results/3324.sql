SELECT DISTINCT m.* FROM title_basics AS tb JOIN name_basics ON tb.titleType = 'Movie' AND nc.primaryProfession LIKE '%Actor%' WHERE tb.isAdult <> true