SELECT * FROM 
(select tc.*, nc.* from titles tc join name_basics nb using (titleId), name_basics nc using (primaryName)) as t where t.category = 'Action' AND t.numVotes >= 6