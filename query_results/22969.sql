SELECT DISTINCT tb.* FROM title_basics AS tb JOIN name_basics ON tb.titleId = name_basics.id WHERE tb.genre IN ('Crime', 'Drama') AND tb.startYear > 1980