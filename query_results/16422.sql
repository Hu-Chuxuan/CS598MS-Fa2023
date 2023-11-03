SELECT movies.* FROM (title_recommendation AS mr JOIN title_principals AS tp ON mr.primaryCharacter = tp.job AND mr.characterOrdering >= tp.ordering LIMIT 0,6)