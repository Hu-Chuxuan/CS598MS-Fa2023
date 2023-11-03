SELECT tb.* FROM title_basics as tb INNER JOIN title_ratings as tr ON tb.titleId = tr.titleId WHERE tr.averageRating > 6 AND EXISTS( SELECT tc.* FROM title_crew AS tc WHERE tc.movieId = tb.id ) OR EXISTS( SELECT p.* FROM title_principals AS p WHERE p.characterId IN (SELECT id from character_principal where actorId in ('johnny depp','kevin hart')) AND p.category = 'Actor' )