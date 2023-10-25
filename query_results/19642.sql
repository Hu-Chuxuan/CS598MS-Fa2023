SELECT * FROM (title_basic JOIN cast WHERE genre='horror' AND castingOrdering='<') AS tb JOIN (director_credits JOIN writer_credits ON directorCredits.directedMovieId=writerCredits.writtenMovieID) AS dc JOIN actor_casts ON actorCasts.actorID = actors.id LEFT OUTER JOIN character_actors ON characterActors.characterID=actors.id WHERE actors.primaryName IS NOT NULL