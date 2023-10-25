SELECT DISTINCT
    tc.* FROM titles AS tC JOIN name_basics AS nb ON nb.primaryName = tC.titleType AND nb.primaryName IN ('Elsa','Anna','Olaf') OR nb.primaryName IS NULL