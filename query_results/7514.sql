SELECT tb.* FROM title_basics AS tb INNER JOIN name_basics AS n ON tb.titleId = n.titleId AND n.primaryName = "Tom Cruise"