SELECT tb.* FROM title_basics AS tb JOIN name_basics ON nc = p WHERE tb.titleType='movie' AND nc.primaryName LIKE '%Dumb%' OR tb.genre IN ('Comedy') ORDER BY avg(tb.averageRating)