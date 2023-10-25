SELECT t.* FROM title AS t WHERE ((((titleType='movie') AND ((startYear>=1970))))) OR ((titleType='tv'))
AND ((isAdult=TRUE))