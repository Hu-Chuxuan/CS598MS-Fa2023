SELECT t.* FROM title_basics AS t WHERE 
titleType='movie' AND 
(tconst=CONCAT('genre:', genre)) OR 
(tconst IN ('characters:', CHARACTERNAME))